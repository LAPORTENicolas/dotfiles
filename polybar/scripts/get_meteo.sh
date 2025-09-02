#!/bin/bash

# Emplacement (par exemple Paris, ou une ville)
location="Reims"

# Récupérer la météo depuis wttr.in
weather=$(curl -s "wttr.in/$location?format=1&?T")

# Afficher la météo
echo "$weather" | sed "s/ //"
