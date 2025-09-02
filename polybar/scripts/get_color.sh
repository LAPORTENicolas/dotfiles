#!/bin/bash

case $COLOR_R in
1)
	color="#ed4113"
	feh --bg-center ~/.config/wallpapers/wall01.png
	;;
2)
	feh --bg-center ~/.config/wallpapers/wall02.png
	color="#ed0e3d"
	;;
3)
	feh --bg-center ~/.config/wallpapers/wall03.png
	color="#485ca5"
	;;
4)
	feh --bg-center ~/.config/wallpapers/wall04.png
	color="#FFFFFF"
	;;
5)
	feh --bg-center ~/.config/wallpapers/wall05.png
	color="#f98235"
	;;
6)
	feh --bg-center ~/.config/wallpapers/wall06.png
	color="#e48586"
	;;
7)
	feh --bg-center ~/.config/wallpapers/wall08.png
	color="#fc2635"
	;;
esac

bspc config focused_border_color "$color"
echo "/* Change la couleur de fond du contenu dans Firefox */
#main-window {
    background-color: #0D0F1A !important;
}

/* Change la couleur de fond de la barre de menu */
#navigator-toolbox {
    background-color: #0D0F1A !important;
    border: none !important;
}

toolbar, #urlbar {
    background-color: #0D0F1A !important;
    color: rgba(255, 255, 255, .95) !important;
}

#urlbar > *
{
    background-color: #0D0F1A !important;
    border: none !important;
}

#identity-box > *
{
    background-color: #0D0F1A !important;
}

#nav-bar
{
  border-bottom: 2px solid $color !important;
}

tab[selected="true"]
{
  color: red !important;
}

/*
.tab-background {
  background-color: red !important;
}
*/
.tabbrowser-tab[selected="true"] .tab-background {
	background-color: $color !important; /* Onglet actif */
    color: white !important; /* Texte de l'onglet actif */
}" >~/.mozilla/firefox/zwdopfz5.default-release/chrome/userChrome.css
cat >~/.config/polybar/colors.ini <<EOL
[color]
color_primary = ${color}
EOL
