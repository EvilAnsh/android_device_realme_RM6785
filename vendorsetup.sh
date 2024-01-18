echo 'Starting to clone stuffs needed for your device'
echo 'Cloning RM6785 Vendor tree [1/6]'
# Vendor
rm -rf vendor/realme/RM6785-common
if [ ! -d "vendor/realme/RM6785-common" ]; then
    mkdir -p vendor/realme/RM6785-common
    git clone https://github.com/EvilAnsh/proprietary_vendor_realme_RM6785-common.git -b lineage-21 vendor/realme/RM6785-common
fi

echo 'Cloning Vendor-Firmware [2/6]'
# Vendor-Firmware
rm -rf vendor/realme-firmware
if [ ! -d "vendor/realme-firmware" ]; then
    mkdir -p vendor/realme-firmware
    git clone https://github.com/realme-mt6785-devs/proprietary_vendor_realme-firmware.git -b master vendor/realme-firmware
fi

echo 'Cloning Kernel tree [3/6]'
# Kernel
rm -rf kernel/realme/mt6785
if [ ! -d "kernel/realme/mt6785" ]; then
    mkdir -p kernel/realme/mt6785
    git clone https://github.com/EvilAnsh/android_kernel_realme_mt6785.git -b R-based-nonksu kernel/realme/mt6785
fi

echo 'Cloning Mediatek SEpolicy_vndr [4/6]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/realme-mt6785-devs/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
fi

echo 'Cloning Hardware Mediatek [5/6]'
# Hardware
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/realme-mt6785-devs/android_hardware_mediatek.git -b lineage-21 hardware/mediatek
fi

echo 'Sync some stuff from lineage [6/6]'
# Lineage Compat
rm -rf hardware/lineage/compat
if [ ! -d "hardware/lineage/compat" ]; then
    mkdir -p hardware/lineage/compat
    git clone https://github.com/LineageOS/android_hardware_lineage_compat.git -b lineage-21.0 hardware/lineage/compat
fi

echo 'Completed, Now proceeding to lunch'
