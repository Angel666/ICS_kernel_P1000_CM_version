echo " "
echo " CLEANING..."
echo " "

make clean

echo "================================================================================================================="
echo "  BUILDING MODULES AND COPYING THEM TO RAMDISK"
echo "================================================================================================================="

make -j4 modules

echo " "
echo " "
find . -iname *.ko | xargs cp -frvt ~/project-voodoo-kernel_repack_utils-7be059c/initramfs_root/lib/modules
echo " "
echo " "
echo " "

echo "================================================================================================================="
echo "  BUILDING KERNEL"
echo "================================================================================================================="

make -j4

cd arch/arm/boot
ls -la

echo " "
echo "   THE END    " 
echo " "
