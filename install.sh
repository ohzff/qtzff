#/bin/bash

echo " >> Install QtZff game..."

echo "    -> Prepare"
mkdir -p "/usr/share/qtzff"

echo "    -> Compile"
qmake ./QtZff.pro
make

echo "    -> Pushing files"
cp QtZff /usr/bin/qtzff
cp qtzff.desktop /usr/share/applications
cp * /usr/share/qtzff

echo "    -> Chmod files"
chmod 755 /usr/bin/qtzff
chmod 755 /usr/share/applications/qtzff.desktop

echo " >> Installed QtZff"

