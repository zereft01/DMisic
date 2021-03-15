#!/bin/bash
# echo "Para usar esta herramientas necesitas instalar - youtube-dl y -ffmpeg "
#INSTALACIÓN VIA APT (Debian y derivados del mismo)
	#sudo apt install ffmpeg
	#sudo apt install youtube-dl

#INSTALACIÓN VIA PIP/PIP3
#pip install yotube-dl o pip3 install youtube-dl

lineas="===================================="
red='\033[1;31m'                                        
green='\033[1;32m'
yellow='\033[1;33m'                                   
blue='\033[1;34m'                                       
magenta='\033[1;35m'                                    
cyan='\033[1;36m'
reset='\033[0m'
printf $green
echo $lineas

echo "  ╔═ ╔╔ ║ ║╔═╝╝╔═╝  ═║  ╔═║
  ║ ║║║║║ ║══║║║     ║  ║╝║
  ══ ╝╝╝══╝══╝╝══╝  ══╝╝══╝
"

echo $lineas

read -p "Que quieres descargar:
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
	[2])
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
		echo "ADIOS"
		echo $lineas
esac
		
			
