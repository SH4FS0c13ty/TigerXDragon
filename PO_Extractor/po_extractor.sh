#! /bin/sh -

DIR=$PWD

echo -n -e "\033]0;Toradora! Portable Translation Toolkit PO Extractor by SH4FS0c13ty\007"
clear
echo ""
echo "████████╗██╗ ██████╗ ███████╗██████╗     ██╗  ██╗    ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗"
echo "╚══██╔══╝██║██╔════╝ ██╔════╝██╔══██╗    ╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║"
echo "   ██║   ██║██║  ███╗█████╗  ██████╔╝     ╚███╔╝     ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║"
echo "   ██║   ██║██║   ██║██╔══╝  ██╔══██╗     ██╔██╗     ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║"
echo "   ██║   ██║╚██████╔╝███████╗██║  ██║    ██╔╝ ██╗    ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║"
echo "   ╚═╝   ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝"
echo ""
echo "Toradora! Portable Translation Toolkit PO Extractor by SH4FS0c13ty"
echo "PO Extractor will extract strings from OBJ files and convert them into PO files for translation."
echo ""
read -p "Start PO Extractor (y/n)? " start
if [ $start != "y" ]; then
    exit
fi

cd $DIR/OBJ

read -p "Extract .obj files (y/n)? " extract
    echo ""
if [ $extract = "y" ]; then
    echo "Extracting .obj files ..."
    find ../../DatWorker/resource/script/ -name "*.obj.gz" -exec cp {} . \;
    gunzip -f *.gz
fi

echo "Removing invalid .obj files for translation ..."
rm $DIR/OBJ/_0011AAA0.obj 2>/dev/null
rm $DIR/OBJ/_0012AAA0.obj 2>/dev/null
rm $DIR/OBJ/_0021aaa0.obj 2>/dev/null
rm $DIR/OBJ/_0022aaa0.obj 2>/dev/null
rm $DIR/OBJ/_0031aaa0.obj 2>/dev/null
rm $DIR/OBJ/_0033aaa0.obj 2>/dev/null
rm $DIR/OBJ/_0035aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a041aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a043aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a052aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a054aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a055aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a192aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a291aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a361aaa0.obj 2>/dev/null
rm $DIR/OBJ/_a362aaa0.obj 2>/dev/null
rm $DIR/OBJ/_b041aaa0.obj 2>/dev/null
rm $DIR/OBJ/_b045aaa0.obj 2>/dev/null
rm $DIR/OBJ/_b062aaa0.obj 2>/dev/null
rm $DIR/OBJ/_b192aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c041aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c042aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c051aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c053aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c054aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c056aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c061aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c064aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c065aaa0.obj 2>/dev/null
rm $DIR/OBJ/_c072aaa0.obj 2>/dev/null
rm $DIR/OBJ/_d021aaa0.obj 2>/dev/null

echo ""
read -p "Press [ENTER] to continue ..." continue
echo ""

echo "Extracting strings ..."
for x in *.obj; do
    name=$(basename $x .obj)
    $DIR/OBJEGUI.exe -export $name.obj ..\\TXT\\$name.txt || exit
done

echo "Converting files ..."
cd $DIR/TXT
for x in *.txt; do
    name=$(basename $x .txt)
    sed -e 'G;' $DIR/TXT/$name.txt > $DIR/TXT/$name.txt.new
    mv $name.txt.new $name.txt
done
txt2po $DIR/TXT/*.txt $DIR/PO/

