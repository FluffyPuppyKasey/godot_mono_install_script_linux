#!/bin/bash

GODOT_VERSION=4.7.2

# Download, extract, and move Godot files to /opt
wget https://github.com/godotengine/godot/releases/download/$GODOT_VERSION-stable/Godot_v$GODOT_VERSION-stable_mono_linux_x86_64.zip
unzip Godot_v$GODOT_VERSION-stable_mono_linux_x86_64.zip
sudo mkdir /opt/godot-$GODOT_VERSION-mono/
sudo mv Godot_v$GODOT_VERSION-stable_mono_linux_x86_64/* /opt/godot-$GODOT_VERSION-mono/

# Download and resize icon to preferred size of 26px
wget -O godot.svg https://upload.wikimedia.org/wikipedia/commons/6/6a/Godot_icon.svg
mogrify -resize 256 -background none -format png godot.svg
sudo mv godot.png /opt/godot-$GODOT_VERSION-mono/godot.png

# Create desktop file for lauching from application launcher
echo "[Desktop Entry]" >> godot-mono.desktop
echo "Encoding=UTF-8" >> godot-mono.desktop
echo "Version=$GODOT_VERSION" >> godot-mono.desktop
echo "Name=Godot Mono" >> godot-mono.desktop
echo "GenericName=Game Engine" >> godot-mono.desktop
echo "Comment=Cross-platform game engine to create 2D and 3D games in .NET" >> godot-mono.desktop
echo "Exec=/opt/godot-$GODOT_VERSION-mono/Godot_v$GODOT_VERSION-stable_mono_linux.x86_64" >> godot-mono.desktop
echo "Icon=/opt/godot-$GODOT_VERSION-mono/godot.png" >> godot-mono.desktop
echo "Terminal=false" >> godot-mono.desktop
echo "Type=Application" >> godot-mono.desktop
echo "Categories=Development; Games;" >> godot-mono.desktop
