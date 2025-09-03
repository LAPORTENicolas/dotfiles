wall_amount=$(ls -l ~/.config/wallpapers | wc -l)
wall_amount=$(expr $wall_amount - 1)
rand=$(shuf -i 1-$wall_amount -n 1)
feh --bg-fill ~/.config/wallpapers/wall-$rand.*
