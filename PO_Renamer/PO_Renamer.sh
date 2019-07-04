#! /bin/sh -

echo -n -e "\033]0;Toradora! Portable Translation Toolkit PO Renamer by SH4FS0c13ty\007"
clear
echo ""
echo "████████╗██╗ ██████╗ ███████╗██████╗     ██╗  ██╗    ██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗"
echo "╚══██╔══╝██║██╔════╝ ██╔════╝██╔══██╗    ╚██╗██╔╝    ██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║"
echo "   ██║   ██║██║  ███╗█████╗  ██████╔╝     ╚███╔╝     ██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║"
echo "   ██║   ██║██║   ██║██╔══╝  ██╔══██╗     ██╔██╗     ██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║"
echo "   ██║   ██║╚██████╔╝███████╗██║  ██║    ██╔╝ ██╗    ██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║"
echo "   ╚═╝   ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝"
echo ""
echo "Toradora! Portable Translation Toolkit PO Renamer by SH4FS0c13ty"
echo "PO Renamer will organize the .po files in order to use them with TigerXDragon."
echo ""
read -p "Start PO Renamer (y/n)? " start
if [ $start != "y" ]; then
    exit
fi

echo ""
cd ../po-files/
echo "Organizing files ..."
for x in *; do
    mv "$x/fr-FR.po" "$x.file"
    rm -r "$x"
    mv "$x.file" "$x"
done
