#!/bin/bash

message(){
    echo -e "\033[32m[I] $1\033[0m"
}
warning(){
    echo -e "\033[33m[W] $1\033[0m"
}
error(){
    echo -e "\033[31m[E] $1\033[0m"
}
question(){
    echo -ne "\033[1m$1\033[0m"
}
build_server(){
    message "creating .jar file from server"
    cd ../Skyport-logic
    scons -c > /dev/null || exit
    make clean > /dev/null || exit
    scons > /dev/null || exit
    ./make-jar.sh > /dev/null || exit
    cd ../Skyport-SDK || exit
}
build_lovegraphics(){
    build_lovepackage
    build_lovegraphics_windows
    build_lovegraphics_linux
    build_lovegraphics_osx
    rm skyport2d.love
}

build_lovepackage(){
    message "creating .love package..."
    cd ../skyport-lovegraphics
    zip skyport2d.love * -r > /dev/null || exit
    mv skyport2d.love ../Skyport-SDK
    cd ../Skyport-SDK
}

build_lovegraphics_windows(){
    message "packaging skyport-lovegraphics for win32..."
    cat lovedist/love.exe skyport2d.love > win32/gui/skyport2d.exe || exit
    cp lovedist/DevIL.dll win32/gui/  || exit
    cp lovedist/OpenAL32.dll win32/gui/ || exit
    cp lovedist/SDL.dll win32/gui/ || exit
}
build_lovegraphics_linux(){
    message "copying .love file to linux/..."
    cp skyport2d.love linux/gui/ || exit
}
build_lovegraphics_osx(){
    message "copying .love file to osx/..."
    cp skyport2d.love osx/gui/ || exit
}

collect_server(){
    message "collecting server..."
    cp ../Skyport-logic/skyport-server.jar .  || exit
    cp skyport-server.jar linux/server/  || exit
    cp skyport-server.jar win32/server/ || exit
    cp skyport-server.jar osx/server/ || exit
    rm skyport-server.jar
}
collect_maps(){
    message "collecting maps..."
    cp ../Skyport-logic/assets/*.skyportmap . || exit
    cp *.skyportmap linux/server/ || exit
    cp *.skyportmap win32/server/ || exit
    cp *.skyportmap osx/server/ || exit
    rm *.skyportmap
}
collect_documentation(){
    message "collecting documentation..."
    cp -r ../Skyport-logic/docs/ . || exit
    cp -r docs linux || exit
    cp -r docs win32 || exit
    cp -r docs osx || exit
    rm -rf docs
}
collect_apis(){
    message "collecting APIs..."
    cp -r ../Skyport-logic/api .
    cp -r api linux/ || exit
    cp -r api win32/ || exit
    cp -r api osx/ || exit
    rm -rf api
    rm */api/python/*.pyc
}
collect_bots(){
    message "collecting AIs..."
    cp -r ../Skyport-logic/ais .
    cp -r ais linux/ || exit
    cp -r ais win32/ || exit
    cp -r ais osx/ || exit
    rm -rf ais
}

create_bundle(){
    mkdir Skyport-SDK-$BUILDNAME || exit
    mv {linux,osx,win32} Skyport-SDK-$BUILDNAME/ || exit
    tar -cf Skyport-SDK-$BUILDNAME.tar Skyport-SDK-$BUILDNAME/ || exit
    bzip2 Skyport-SDK-$BUILDNAME.tar || exit
    rm -rf Skyport-SDK-$BUILDNAME || exit
}

make_tags(){
    warning "STUB: create tags"
}

question "Please enter the name of this build: "
read BUILDNAME
echo "################ BUILDING $BUILDNAME ################"
mkdir -p {linux,win32,osx}/{server,gui,ais}
build_server
build_lovegraphics
echo "################ COLLECTING.... ################"
collect_server
collect_maps
collect_documentation
collect_apis
collect_bots
echo "################ PACKING BUNDLE ################"
create_bundle
echo "################ FINISHED BUILD ################"
question "Do you want me to create tags in skyport-logic and skyport-lovegraphics? "
while true
do
    read yn
    case $yn in
	[Yy]* ) make_tags;;
	[Nn]* ) exit;;
	* ) echo "Please answer yes or no.";;
    esac
done

