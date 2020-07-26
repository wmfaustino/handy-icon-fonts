#!/usr/bin/env sh
# ---------------------------------------------------------
#
# TITLE         : Handy Icon Fonts
# DESCRIPTION   : Install a set of icon fonts suitable for a varied use cases

# AUTHOR        : Wilson Faustino <open source (a) wfaustino dev>

# DATE          : 2020-jul-26
# VERSION       : 1.1.0    

# USAGE		      : ./install.sh
# DEPENDENCIES  : fontconfig fontconfig-config libfontconfig1 libfontconfig1-dev libxft-dev libxft2 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpangomm-1.4-1v5 libpangomm-1.4-dev libpangoxft-1.0-0 libotf0

# NOTES         : It was tested on Debian Buster, but should work on any Linux Distribution

# ---------------------------------------------------------
# Installation Script Released under MIT License
# ---------------------------------------------------------
 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# =========================================================
# === GLOBAL VARIABLES
# =========================================================

fontsDir="$HOME/.local/share/fonts/glyphs"

glyphSrc='https://github.com/wmfaustino/handy-icon-fonts/tree/master/glyphs'

fonts="\
	devicons.ttf
	feather.ttf
	Font Awesome 5 Brands-Regular-400.otf
	Font Awesome 5 Free-Regular-400.otf
	Font Awesome 5 Free-Solid-900.otf
	font-awesome-extension.ttf
	font-logos.ttf
	IcoMoon-Free.ttf
	Icons South St.ttf
	Linearicons-Free.ttf
	materialdesignicons-webfont.ttf
  Noto Emoji Nerd Font Complete Mono.ttf
  Noto Emoji Nerd Font Complete.ttf
	octicons.ttf
	original-source.otf
	Pomicons.otf
	PowerlineExtraSymbols.otf
	PowerlineSymbols.otf
	Symbols-1000-em Nerd Font Complete.ttf
	Symbols-2048-em Nerd Font Complete.ttf
	Symbols Template 1000 em.ttf
	Symbols Template 2048 em.ttf
	typicons.ttf
	Unicode_IEC_symbol_font.otf
	weathericons-regular-webfont.ttf\
"

# =========================================================
# === ENTRY POINT
# =========================================================

_main(){
  
  printf "%s\n\n" "Preparing to install icon fonts..." 
	_installFont "$fonts"

  printf "\n%s\n" "Refreshing font cache"
	_refreshFontCache
	
	exit 0
}

# =========================================================
# === FUNCTIONS
# =========================================================

_installFont(){
	
	printf "%s\n" "$1" | while read font; do
	
                 # Github changes blank spaces to %20
		url="$glyphSrc"/$( echo "$font" | sed -e 's/ /%20/g' )
		
    curl -4so "${fontsDir}/${font}" "${url}" --create-dirs
		
    printf "\t%s\n" "${font} successfully installed"

	done
	return 0
}

_refreshFontCache(){
  
  cacheRefreshedMsg='Font cache successfully refreshed'
  cacheErrorMsg='Font cache could not be refreshed. Please check-out the dependencies'

	fc-cache -fv 1> /dev/null 2>&1
	if [ "$?" -ne 0 ]; then
    printf "\n%s\n" "${cacheErrorMsg}" && return "$?"
  else
    printf "\n%s\n" "${cacheRefreshedMsg}" && return 0
  fi
}

# =========================================================
# === STARTS INSTALLATION
# =========================================================

_main
