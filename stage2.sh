#! /bin/sh -

DIR=$PWD

echo -n -e "\033]0;Toradora! Portable Translation Toolkit Stage 2 by SH4FS0c13ty\007"
clear
echo ""
echo "████████╗██╗ ██████╗ ███████╗██████╗     ██╗  ██╗    ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗"
echo "╚══██╔══╝██║██╔════╝ ██╔════╝██╔══██╗    ╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║"
echo "   ██║   ██║██║  ███╗█████╗  ██████╔╝     ╚███╔╝     ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║"
echo "   ██║   ██║██║   ██║██╔══╝  ██╔══██╗     ██╔██╗     ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║"
echo "   ██║   ██║╚██████╔╝███████╗██║  ██║    ██╔╝ ██╗    ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║"
echo "   ╚═╝   ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝"
echo ""
echo "Toradora! Portable Translation Toolkit Stage 2 by SH4FS0c13ty"
echo "Stage 2 will extract .obj files, build the strings and repack .obj files."
echo ""
read -p "Start stage 2 (y/n)? " start
if [ $start != "y" ]; then
    exit
fi

read -p "Clean the workspace (y/n)? " clean
if [ $clean = "y" ]; then
	echo ""
    echo "Cleaning the workspace ..."
    rm -r $DIR/data/strings/*
	rm -rf $DIR/data/obj/*
fi
echo ""

echo "Copying strings ..."
cp $DIR/po-files/* $DIR/data/strings/

echo "Unpacking .obj files ..."
cd $DIR/data/obj
find $DIR/DatWorker/resource/script/ -name "*.obj.gz" -exec cp {} . \;
gunzip -f *.gz

echo "Converting string files ..."
cd $DIR/data/strings
for x in *.po; do
    name=$(basename $x .po)
    po2txt $name.po $name.txt.po --fuzzy 2>/dev/null || exit
    sed '/^$/d' $name.txt.po > 1.txt
	sed 's/^.*「/「/' 1.txt > 2.txt
	sed 's/\」.*/」/' 2.txt > $name.txt
	rm 1.txt 2.txt
done

cd $DIR/data/obj
echo "Renaming invalid .obj files for translation ..."
mv $DIR/data/obj/_0011AAA0.obj $DIR/data/obj/_0011AAA0.objinv
mv $DIR/data/obj/_0012AAA0.obj $DIR/data/obj/_0012AAA0.objinv
mv $DIR/data/obj/_0021aaa0.obj $DIR/data/obj/_0021aaa0.objinv
mv $DIR/data/obj/_0022aaa0.obj $DIR/data/obj/_0022aaa0.objinv
mv $DIR/data/obj/_0031aaa0.obj $DIR/data/obj/_0031aaa0.objinv
mv $DIR/data/obj/_0033aaa0.obj $DIR/data/obj/_0033aaa0.objinv
mv $DIR/data/obj/_0035aaa0.obj $DIR/data/obj/_0035aaa0.objinv
mv $DIR/data/obj/_a041aaa0.obj $DIR/data/obj/_a041aaa0.objinv
mv $DIR/data/obj/_a043aaa0.obj $DIR/data/obj/_a043aaa0.objinv
mv $DIR/data/obj/_a052aaa0.obj $DIR/data/obj/_a052aaa0.objinv
mv $DIR/data/obj/_a054aaa0.obj $DIR/data/obj/_a054aaa0.objinv
mv $DIR/data/obj/_a055aaa0.obj $DIR/data/obj/_a055aaa0.objinv
mv $DIR/data/obj/_a192aaa0.obj $DIR/data/obj/_a192aaa0.objinv
mv $DIR/data/obj/_a291aaa0.obj $DIR/data/obj/_a291aaa0.objinv
mv $DIR/data/obj/_a361aaa0.obj $DIR/data/obj/_a361aaa0.objinv
mv $DIR/data/obj/_a362aaa0.obj $DIR/data/obj/_a362aaa0.objinv
mv $DIR/data/obj/_b041aaa0.obj $DIR/data/obj/_b041aaa0.objinv
mv $DIR/data/obj/_b045aaa0.obj $DIR/data/obj/_b045aaa0.objinv
mv $DIR/data/obj/_b062aaa0.obj $DIR/data/obj/_b062aaa0.objinv
mv $DIR/data/obj/_b192aaa0.obj $DIR/data/obj/_b192aaa0.objinv
mv $DIR/data/obj/_c041aaa0.obj $DIR/data/obj/_c041aaa0.objinv
mv $DIR/data/obj/_c042aaa0.obj $DIR/data/obj/_c042aaa0.objinv
mv $DIR/data/obj/_c051aaa0.obj $DIR/data/obj/_c051aaa0.objinv
mv $DIR/data/obj/_c053aaa0.obj $DIR/data/obj/_c053aaa0.objinv
mv $DIR/data/obj/_c054aaa0.obj $DIR/data/obj/_c054aaa0.objinv
mv $DIR/data/obj/_c056aaa0.obj $DIR/data/obj/_c056aaa0.objinv
mv $DIR/data/obj/_c061aaa0.obj $DIR/data/obj/_c061aaa0.objinv
mv $DIR/data/obj/_c064aaa0.obj $DIR/data/obj/_c064aaa0.objinv
mv $DIR/data/obj/_c065aaa0.obj $DIR/data/obj/_c065aaa0.objinv
mv $DIR/data/obj/_c072aaa0.obj $DIR/data/obj/_c072aaa0.objinv
mv $DIR/data/obj/_d021aaa0.obj $DIR/data/obj/_d021aaa0.objinv

echo "Modifying .obj files ..."
for x in *.obj; do
    name=$(basename $x .obj)
    $DIR/OBJEditor/OBJEGUI.exe -patch ..\\obj\\$name.obj ..\\strings\\$name.txt || exit
done

echo "Renaming back invalid .obj files for translation ..."
mv $DIR/data/obj/_0011AAA0.objinv $DIR/data/obj/_0011AAA0.obj
mv $DIR/data/obj/_0012AAA0.objinv $DIR/data/obj/_0012AAA0.obj
mv $DIR/data/obj/_0021aaa0.objinv $DIR/data/obj/_0021aaa0.obj
mv $DIR/data/obj/_0022aaa0.objinv $DIR/data/obj/_0022aaa0.obj
mv $DIR/data/obj/_0031aaa0.objinv $DIR/data/obj/_0031aaa0.obj
mv $DIR/data/obj/_0033aaa0.objinv $DIR/data/obj/_0033aaa0.obj
mv $DIR/data/obj/_0035aaa0.objinv $DIR/data/obj/_0035aaa0.obj
mv $DIR/data/obj/_a041aaa0.objinv $DIR/data/obj/_a041aaa0.obj
mv $DIR/data/obj/_a043aaa0.objinv $DIR/data/obj/_a043aaa0.obj
mv $DIR/data/obj/_a052aaa0.objinv $DIR/data/obj/_a052aaa0.obj
mv $DIR/data/obj/_a054aaa0.objinv $DIR/data/obj/_a054aaa0.obj
mv $DIR/data/obj/_a055aaa0.objinv $DIR/data/obj/_a055aaa0.obj
mv $DIR/data/obj/_a192aaa0.objinv $DIR/data/obj/_a192aaa0.obj
mv $DIR/data/obj/_a291aaa0.objinv $DIR/data/obj/_a291aaa0.obj
mv $DIR/data/obj/_a361aaa0.objinv $DIR/data/obj/_a361aaa0.obj
mv $DIR/data/obj/_a362aaa0.objinv $DIR/data/obj/_a362aaa0.obj
mv $DIR/data/obj/_b041aaa0.objinv $DIR/data/obj/_b041aaa0.obj
mv $DIR/data/obj/_b045aaa0.objinv $DIR/data/obj/_b045aaa0.obj
mv $DIR/data/obj/_b062aaa0.objinv $DIR/data/obj/_b062aaa0.obj
mv $DIR/data/obj/_b192aaa0.objinv $DIR/data/obj/_b192aaa0.obj
mv $DIR/data/obj/_c041aaa0.objinv $DIR/data/obj/_c041aaa0.obj
mv $DIR/data/obj/_c042aaa0.objinv $DIR/data/obj/_c042aaa0.obj
mv $DIR/data/obj/_c051aaa0.objinv $DIR/data/obj/_c051aaa0.obj
mv $DIR/data/obj/_c053aaa0.objinv $DIR/data/obj/_c053aaa0.obj
mv $DIR/data/obj/_c054aaa0.objinv $DIR/data/obj/_c054aaa0.obj
mv $DIR/data/obj/_c056aaa0.objinv $DIR/data/obj/_c056aaa0.obj
mv $DIR/data/obj/_c061aaa0.objinv $DIR/data/obj/_c061aaa0.obj
mv $DIR/data/obj/_c064aaa0.objinv $DIR/data/obj/_c064aaa0.obj
mv $DIR/data/obj/_c065aaa0.objinv $DIR/data/obj/_c065aaa0.obj
mv $DIR/data/obj/_c072aaa0.objinv $DIR/data/obj/_c072aaa0.obj
mv $DIR/data/obj/_d021aaa0.objinv $DIR/data/obj/_d021aaa0.obj


echo "Compressing .obj files ..."
cd $DIR/data/obj
gzip -n9 -f *.obj

echo "Replacing .obj.gz files ..."
for x in *.obj.gz; do
    name=$(echo $x | sed s/.obj.gz$//g)
    cp -r $x $DIR/DatWorker/resource/script/$name/$name.0001/
done

echo "Copying first.dat translated files ..."

cp $DIR/data/first/charaname.txt.gz $DIR/DatWorker/first/text/charaname.txt.gz
cp $DIR/data/first/ItemList.csv.gz $DIR/DatWorker/first/text/ItemList.csv.gz
cp $DIR/data/first/placename.txt.gz $DIR/DatWorker/first/text/placename.txt.gz
cp $DIR/data/first/utf8.txt.gz $DIR/DatWorker/first/text/utf8.txt.gz
cp $DIR/data/first/utf16.txt.gz $DIR/DatWorker/first/text/utf16.txt.gz


echo "Done!"