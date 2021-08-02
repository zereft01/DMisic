#!/bin/bash

lineas="===================================="                                   
green='\033[1;32m'
printf $green
v=1.2
echo $lineas

echo "╔═ ╔╔ ║ ║╔═╝╝╔═╝
║ ║║║║║ ║══║║║  
══ ╝╝╝══╝══╝╝══╝" $v
echo $lineas

read -p "¿Que quieres descargar?
 [1] Canción 
 [2] Playlist 
 [3] Salir _>" arch


case $arch in
	[Cc]ancion|Canción|canción|1)
		echo $lineas
		read -p "Pega la URL de la canción _>" Ind
		if [ -z $Ind ];then
			echo $lineas
			echo "No ingresante una url _>"
			exit
		fi
		
		sleep 0.5
		echo "Iniciando descarga _>"
		youtube-dl -f bestaudio --embed-thumbnail --extract-audio --audio-format mp3 --audio-quality 0 $Ind
		sleep 0.5 
		echo $lineas
		echo "Descarga finalizada, el archivo se encuentra en: _>"
		pwd
		;;
	[Pp]laylist|2)
		read -p "Pega la URL de la playlist _>" Play
		if [ -z $Play ];then
			echo "No ingresante una url _>"
			exit
		fi
		echo $lineas
		sleep 0.5
		echo "Preparando descarga _>"
		youtube-dl -ict --embed-thumbnail --yes-playlist --extract-audio --audio-format mp3 --audio-quality 0 $Play
		echo $lineas
		;;
	 [3]|*)
		echo $lineas
		echo "<_Adiós_>"
		echo $lineas
esac
		
			
