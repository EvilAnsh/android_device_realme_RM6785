echo 'Starting to clone stuffs needed for your device'
echo 'Cloning RM6785 Vendor tree [1/5]'
# Vendor
rm -rf vendor/realme/RM6785-common
if [ ! -d "vendor/realme/RM6785-common" ]; then
    mkdir -p vendor/realme/RM6785-common
    git clone https://github.com/EvilAnsh/proprietary_vendor_realme_RM6785-common -b lineage-21 vendor/realme/RM6785-common
fi

echo 'Cloning Kernel tree [2/5]'
# Kernel
rm -rf kernel/realme/mt6785
if [ ! -d "kernel/realme/mt6785" ]; then
    mkdir -p kernel/realme/mt6785
    git clone https://github.com/realme-mt6785-devs/android_kernel_realme_mt6785 -b lineage-21 kernel/realme/mt6785
fi

echo 'Cloning Mediatek SEpolicy_vndr [3/5]'
# SEpolicy
rm -rf device/mediatek/sepolicy_vndr
if [ ! -d "device/mediatek/sepolicy_vndr" ]; then
    mkdir -p device/mediatek/sepolicy_vndr
    git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
fi

echo 'Cloning Hardware Mediatek [4/5]'
# Hardware
rm -rf hardware/mediatek
if [ ! -d "hardware/mediatek" ]; then
    mkdir -p hardware/mediatek
    git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-21 hardware/mediatek
fi

echo 'Cloning AOSP Clang 17.0.4 [5/5]' 
# AOSP Clang 17.0.4 
rm -rf prebuilts/clang/host/linux-x86/r498229b 
if [ ! -d "prebuilts/clang/host/linux-x86/r498229b" ]; then 
    mkdir -p prebuilts/clang/host/linux-x86/r498229b 
    git clone https://gitlab.com/itsshashanksp/android_prebuilts_clang_host_linux-x86_clang-r498229b.git -b 13.0 prebuilts/clang/host/linux-x86/r498229b
fi

echo 'Completed, Now proceeding to lunch'
