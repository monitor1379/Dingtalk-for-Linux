echo "============================================"
echo "Welcome to install Dingtalk for Linux"
default_prefix="${HOME}/dingtalk"
echo ""
echo -n "Install to (${default_prefix}): "
prefix=''
read prefix
if [ ! -n "$prefix" ]; then
	prefix=$default_prefix
fi


echo ""
echo "Install position: ${prefix}"
echo ""

echo "Installing..."

echo "Create: $prefix"

if [ ! -d ${prefix} ]; then
	mkdir ${prefix}
fi

if [ ! -d lib ]; then
	mkdir lib
fi

echo "Download: nodejs-webkit"

nwjs_dirname=nwjs-v0.32.0-linux-x64
nwjs_filename=nwjs-v0.32.0-linux-x64.tar.gz

if [ ! -f "$nwjs_filename" ]; then
	echo "-------------------------------------------------------------------------"
	wget -O $nwjs_filename http://cdn.npm.taobao.org/dist/nwjs/v0.32.0/$nwjs_filename
	echo "-------------------------------------------------------------------------"
fi


echo "Untar: nodejs-webkit"
if [ ! -d "lib/$nwjs_dirname" ]; then
	tar -zxvf $nwjs_filename
	mv $nwjs_dirname lib/
fi

echo "Copy: src/ to ${prefix}/src"
cp -R src ${prefix}/src

echo "Copy: lib/ to ${prefix}/lib"
cp -R lib ${prefix}


echo "Copy: dingtalk.sh to ${prefix}"
cp dingtalk.sh ${prefix}
cp uninstall.sh ${prefix}

echo "Create: /usr/share/applications/dingtalk.desktop"
touch /usr/share/applications/dingtalk.desktop

echo "[Desktop Entry]
Encoding=UTF-8
Name=Dingtalk
Comment=Dingtalk
Exec=bash ${prefix}/dingtalk.sh
Icon=${prefix}/src/icon128x128.png
Terminal=false
StartupNotify=false
Type=Application
Categories=Application;Development;" > /usr/share/applications/dingtalk.desktop

cp /usr/share/applications/dingtalk.desktop ~/Desktop/dingtalk.desktop

echo ""
echo "Done"
echo "============================================"
