#!/bin/bash

echo -e "Swahilisha - Swahili Language localization script\n"
echo -e "=================================================\n"
echo "checking kernel type"
installed_apps=""
kernel_type="$(uname -a)"
if echo $kernel_type | grep "Ubuntu" ; then
    base="ubuntu"
    echo "ubuntu base detected"
    installed_apps="$(apt list --installed | cut -d '/' -f1 > installed.txt)"
elif echo $kernel_type | grep "ARCH" ; then
    base="arch"
    echo "arch base detected"
    installed_apps="$(pacman -Q | cut -d ' ' -f1)"
else   
    base=""
    echo "base currently unsupported. Check in a day"
    exit 1
fi
translated_packages="$(ls -R | grep pot | cut -d '.' -f1 > pot_files.txt)"
similar="$(sort ./installed.txt ./pot_files.txt | uniq -d)"
echo -e "\nYou could start with these, as they are already installed\n"
for app in $similar ; do echo $app; done
rm installed.txt pot_files.txt
