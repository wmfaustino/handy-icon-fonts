# Handy Icon Fonts

The internet is full of different icon fonts available for anyone who wants to take the time to download it (sometimes patch it) and finnaly install on they're system.

The problem is just that those fonts are spread all over different sites, repositories, links, etc. It turns out to be a very tedious task to acctually to get all those fonts.

Well, even though I really enjoy to use those fonts on my system (polybar as an exemple), I really get bored to do repetivie tasks.

That's why a carefully created this repository and created a POSIX compliant script to install those for me at anytime and on any Linux system I'm using. 

I also listed the official source for each font.

Enjoy it!!!

## Usage

```sh
curl -L https://github.com/wmfaustino/handy-icon-fonts/raw/master/install.sh | sh
```
or
```sh
git clone https://github.com/wmfaustino/handy-icon-fonts.git && cd handy-icon-fonts && sh install.sh
```


## Dependencies

The install.sh script only installs the listed fonts, it does not install any dependency.

These dependency packages are pretty standard. You probably have all of them already installed, or at least most of them.

### Debian based systems
```sh
sudo apt install fontconfig fontconfig-config libfontconfig1 libfontconfig1-dev libxft-dev libxft2 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpangomm-1.4-1v5 libpangomm-1.4-dev libpangoxft-1.0-0 libotf0 -y
```

## Icon Fonts Included

|           FONT          	|                        WEBSITE                       	|
|:-----------------------:	|:----------------------------------------------------:	|
| Devicons                	| https://vorillaz.github.io/devicons/                 	|
| Feather                 	| https://feathericons.com/                            	|
| Font Awesome            	| https://fontawesome.com/                             	|
| Font Logos              	| https://lukas-w.github.io/font-logos/                	|
| IcoMoon                 	| https://icomoon.io/                                  	|
| Icons South St          	| https://www.dafont.com/icons-south-st.font           	|
| Linearicons             	| https://linearicons.com/                             	|
| Material Icons          	| https://material.io/resources/icons/                 	|
| Octicons                	| https://primer.style/octicons/                       	|
| Pomicons                	| https://github.com/gabrielelana/pomicons             	|
| Powerline Symbols       	| https://github.com/powerline/fonts                   	|
| Powerline Extra Symbols 	| https://github.com/ryanoasis/powerline-extra-symbols  |
| Symbols Nerd Font         | https://www.nerdfonts.com/                            |
| Typicons                  | https://www.s-ings.com/typicons/                      |
| IEC Symbol                | https://unicodepowersymbol.com/                       |
| Weather Icons             | https://erikflowers.github.io/weather-icons/          |

## Author

* **Wilson Faustino** - *Initial work* - [Github](https://www.twitter.com/gabrielfroes)

## License

This install script is licensed under the [MIT License](https://www.mit.edu/~amini/LICENSE.md).
