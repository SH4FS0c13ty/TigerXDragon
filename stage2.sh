#! /bin/sh -

DIR=$PWD
PYTHON="python3"
GPDA="java -jar $DIR/tools/Gpda.jar"

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
echo "Stage 2 will extract the .dat files and build the strings"
echo ""
read -p "Start stage 2 (y/n)? " start
if [ $start != "y" ]; then
    exit
fi

read -p "Clean the workspace (y/n)? " clean
if [ $clean = "y" ]; then
    echo "Cleaning the workspace ..."
    rm -r $DIR/data/strings/*
	rm -rf $DIR/out/*
	rm -rf $DIR/source/*
fi

read -p "Extract .dat files (y/n)? " gpdacomp
if [ $gpdacomp = "y" ]; then
    echo "Extracing first.dat file ..."
	java -jar $DIR/tools/Gpda.jar $DIR/dat-files/first.dat
	mv $DIR/dat-files/first/ $DIR/source/
	mv $DIR/dat-files/first.dat.txt $DIR/source/
	
	echo "Extracing resource.dat file ..."
	java -jar $DIR/tools/Gpda.jar $DIR/dat-files/resource.dat
	echo "Organizing files ..."
	mv $DIR/dat-files/resource/ $DIR/source/
	mv $DIR/dat-files/resource.dat.txt $DIR/source/
	cp -r $DIR/source/* $DIR/out/
	
	echo "Copying files ..."
	cp $DIR/po-files/* $DIR/data/strings/
	cp -r $DIR/source/first* $DIR/out/
    cp -r $DIR/source/resource* $DIR/out/
fi


echo "Building strings ..."
cd $DIR/data/strings
for x in *.po; do
    po2txt $x $x.out --fuzzy 2>/dev/null || exit
    echo -n .
done
echo ""


echo "Repacking .obj files ..."
cd $DIR/data/strings
find $DIR/source/resource/script.dat/ -name "*.obj.gz" -exec cp {} . \;
find $DIR/source/resource/script.dat/ -name "*.dat.gz" -exec cp {} . \;
gunzip -f *.gz


for x in *po; do
    name=$(basename $x .po)
    cp $name.po $name.obj.po
    po2txt $name.obj.po $name.obj.po.out --fuzzy 2>/dev/null || exit
    echo -n .
done
echo ""



cd $DIR/data/strings
for x in *.obj; do
    name=$(basename $x .obj)
    $PYTHON $DIR/tools/repack.py $name $DIR/data/obj/$name || exit
    echo -n .
done
echo ""




echo "Compressing .obj files ..."
cd $DIR/data/obj
gzip -n9 -f *.obj
echo "Replacing .obj.gz files ..."
rm -r $DIR/out/resource/script.dat/*
for x in *.obj.gz; do
    name=$(echo $x | sed s/.obj.gz$//g)
    mkdir -p $DIR/out/resource/script.dat/$name.dat/$name.dat_1/
    cp $x $DIR/out/resource/script.dat/$name.dat/$name.dat_1/
    echo -n .
done
echo ""
gzip -n9 -f *.dat
echo "Replacing .dat.gz files"
for x in *.dat.gz; do
    name=$(echo $x | sed s/.dat.gz$//g)
    cp $x $DIR/out/resource/script.dat/$name.dat/$name.dat_1/$name.dat.gz
    echo -n .
done
echo ""


echo "Reorgnanizing directories to make them work with DatWorker ..."

cd $DIR/out/resource/script.dat/
mkdir TMP/
find . -name \*.obj.gz -exec cp {} TMP/ \;
find . -name \*.dat.gz -exec cp {} TMP/ \;

cd $DIR/out/resource/script.dat/TMP/
for x in *.obj.gz; do
    name=$(echo $x | sed s/.obj.gz$//g)
    cp -r $x $DIR/DatWorker/resource/script/$name/$name.0001/
    echo -n .
done
for x in *.dat.gz; do
    name=$(echo $x | sed s/.dat.gz$//g)
    cp -r $x $DIR/DatWorker/resource/script/$name/$name.0001/
    echo -n .
done


echo "Done!"