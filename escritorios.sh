#!/bin/bash
echo espara instalar entornos de escritorios
# Creamos la varaible funcheck en la que almacenamos la 
# orden dialog con la opción --separate-output
funcheck=(dialog --separate-output --checklist "Descargas de entornos de escritorios:" 0 0 0)

# Definimos las opciones que apareceran en pantalla
# aparecerán encendidas las que marquemos con on.
opciones=(1 "gnome" off 
 2 "LXDE" off
 3 "LXQT" off
 4 "MATE" off
 5 "OPENBOX" off
 6 "I3" off
 7 "Cinnamon" off
 8 "SPECTRWM" off
 9 "ICEWM" off
10 "JWM" off )

# Creamos la funcion selecciones que ejecuta funcheck con opciones 
# y reenvia la salida al terminal para que el for siguiente ejecute
# los comandos
selecciones=$("${funcheck[@]}" "${opciones[@]}" 2>&1 >/dev/tty)

# limpiamos la pantalla
clear

# añadimos un for para que ejecute un comando en función de 
# las selecciones realizadas puedes cambiar el echo por 
# cualquier comando o secuencias de comandos
for seleccion in $selecciones
do
 case $seleccion in
 1)
 echo "escogistes gnome"

sudo apt install gnome 


 ;;
 2)
 echo "Escogiste LXDE"

sudo apt install lxde 


;;
 3)
 echo "Escogiste LXQT"
 
sudo apt install lxqt

;;
 4)
 echo "Escogiste la MATE"
sudo apt install mate 



;;
 5)
 echo "Escogiste OPENBOX"
 sudo apt install openbox
;;
 6)
 echo "Escogiste I3"
sudo apt install i3

 ;;
 7)
 echo "Escogiste Cinnamon"
sudo apt install cinnamon
 
;;

8)
echo "Escogistes spectrwm"
sudo apt install spectrwm

;;

9)
echo "Escogistes ICEWM"
sudo apt install icewm

;;

10)
echo "Escogistes JWM"
sudo apt install jwm

;;



 esac
done
