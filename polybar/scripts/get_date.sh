case $(date +%a) in
"Mon")
	fr_date="Lundi"
	;;
"Tue")
	fr_date="Mardi"
	;;
"Wed")
	fr_date="Mercredi"
	;;
"Thu")
	fr_date="Jeudi"
	;;
"Fri")
	fr_date="Vendredi"
	;;
"Saturday")
	fr_date="Sameday"
	;;
"Sun")
	fr_date="Dimanche"
	;;
esac

fr_date="$fr_date $(date +%d)"

case $(date +%b) in
"Jan")
	fr_date_m="$fr_date Janv"
	;;
"Feb")
	fr_date_m="$fr_date Févr"
	;;
"Mar")
	fr_date_m="$fr_date Mars"
	;;
"Apr")
	fr_date_m="$fr_date Avril"
	;;
"May")
	fr_date_m="$fr_date Mai"
	;;
"Jun")
	fr_date_m="$fr_date Juin"
	;;
"Jui")
	fr_date_m="$fr_date Juil"
	;;
"Aug")
	fr_date_m="$fr_date Août"
	;;
"Sep")
	fr_date_m="$fr_date Sept"
	;;
"Oct")
	fr_date_m="$fr_date Octb"
	;;
"Nov")
	fr_date_m="$fr_date Nov"
	;;
"Dec")
	fr_date_m="$fr_date Dec"
	;;
esac

echo "$(date +%H:%M) $fr_date"
#echo "$(date +%H:%M) $fr_date_m"
