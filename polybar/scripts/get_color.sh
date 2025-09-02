#!/bin/bash

echo "
/* Change la couleur de fond du contenu dans Firefox */
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
  border-bottom: 2px solid $COLOR_NAV !important;
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
	background-color: $COLOR_NAV !important; /* Onglet actif */
    color: white !important; /* Texte de l'onglet actif */
}" >~/.mozilla/firefox/8pnfwddn.default-release/chrome/userChrome.css
cat >~/.config/polybar/colors.ini <<EOL
[color]
color_primary = $COLOR_NAV
EOL
