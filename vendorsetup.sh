echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning Common device tree'
git clone --depth=1 https://github.com/INCENDIOCODM/android_device_xiaomi_sm8350-common -b crDroid-13 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning Kernel tree'
git clone --depth=1 https://github.com/INCENDIOCODM/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
cd kernel/xiaomi/sm8350
git submodule init && git submodule update KernelSU
cd ../../..

# Vendor
echo 'Cloning Vendor tree'
git clone --depth=1 https://github.com/INCENDIOCODM/proprietary_vendor_xiaomi_haydn -b lineage-20 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning Common vendor tree'
git clone --depth=1 https://github.com/INCENDIOCODM/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common

# Firmware
echo 'Cloning Firmware'
git clone --depth=1 https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b thirteen vendor/xiaomi/haydn-firmware

# Xiaomi
echo 'Cloning Hardware xiaomi'
rm -rf hardware/xiaomi && git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Camera
echo 'Cloning Leica camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera -b thirteen-leica vendor/xiaomi/haydn-miuicamera

echo 'delete vendorsetup.sh from device tree once this is done'
