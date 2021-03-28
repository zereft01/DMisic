#!/bin/bash

lineas="===================================="                                   
green='\033[1;32m'
printf $green
v=1.0
echo $lineas

echo "  ╔═ ╔╔ ║ ║╔═╝╝╔═╝  ═║  ╔═║
  ║ ║║║║║ ║══║║║     ║  ║╝║
  ══ ╝╝╝══╝══╝╝══╝  ══╝╝══╝
"
echo $v
echo $lineas

read -p "¿Que quieres descargar?
 [1] Canción 
 [2] Playlist 
 [3] Salir " arch


case $arch in
	[Cc]ancion|Canción|canción|1)
		echo $lineas
		read -p "Pega la URL de la canción " Ind
		if [ -z $Ind ];then
			echo $lineas
			echo "No ingresante una url"
			exit
		fi
		
		sleep 0.5
		echo "Iniciando descarga.."
		youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 $Ind
		sleep 0.5
		echo $lineas
		echo "Descarga finalizada, el archivo se encuentra en: "
		pwd
		;;
	[Pp]laylist|2)
		read -p "Escribe la URL de la playlist " Play
		if [ -z $Play ];then
			echo "No ingresante una url"
			exit
		fi
		echo $lineas
		sleep 0.5
		echo "Preparando descarga.."
		youtube-dl -ict --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 $Play
		echo $lineas
		;;
	 [*])
		echo $lineas
		echo "Adiós"
		echo $lineas
esac
		
			
