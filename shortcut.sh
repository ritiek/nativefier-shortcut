#!/bin/bash

if [ $# -eq 0 ]
then
    echo "usage: bash $0 </path/to/root/dir/>"
    exit
fi

if [[ "$1" == */ ]]
then
    DIRPATH=${1::-1}
else
    DIRPATH=$1
fi


echo "$DIRPATH" | rev | cut -d'/' -f 1 | rev

#cp -rf $DIRPATH /opt/

cat > "/usr/share/applications/" <<- EOM
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Icon[en_IN]=/opt/aria-2-gtk-linux-x64/resources/app/icon.png
Name[en_IN]=Aria2 GUI
Exec=/usr/bin/aria2gtk
Comment[en_IN]=GUI for the Aria 2 Download Manger
Name=Aria2 GUI
Comment=GUI for the Aria 2 Download Manger
Icon=/opt/aria-2-gtk-linux-x64/resources/app/icon.png
EOM

#echo $ENTRY
