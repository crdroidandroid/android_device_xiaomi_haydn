echo "Clonning mentioned repos"

# Common device tree (chipset tree)
if [ ! -d device/xiaomi/sm8350-common ]; then
   git clone https://github.com/Never-Alive/device_xiaomi_sm8350-common -b lineage-23.2 device/xiaomi/sm8350-common
fi

# Kernel
if [ ! -d kernel/xiaomi/sm8350 ]; then
   git clone --depth=1 https://github.com/Never-Alive/kernel_xiaomi_haydn --recursive -b lineage-23.2 kernel/xiaomi/sm8350
fi

# Main vendor tree
if [ ! -d vendor/xiaomi/haydn ]; then
   git clone --depth=1 https://github.com/Never-Alive/vendor_xiaomi_haydn -b lineage-23.2 vendor/xiaomi/haydn
fi

# Common vendor tree
if [ ! -d vendor/xiaomi/sm8350-common ]; then
   git clone --depth=1 https://github.com/Never-Alive/vendor_xiaomi_sm8350-common -b lineage-23.2 vendor/xiaomi/sm8350-common
fi

# Firmware setup
if [ ! -d vendor/xiaomi/haydn-firmware ]; then
   git clone https://github.com/Never-Alive/vendor_xiaomi_haydn-firmware -b global vendor/xiaomi/haydn-firmware
fi

# Mi-Cam
if [ ! -d vendor/xiaomi/miuicamera-haydn ]; then
   git clone https://gitlab.com/Lucifer-Alive/vendor-xiaomi-miuicamera-haydn -b 16.0 vendor/xiaomi/miuicamera-haydn
fi

# Dolby (Sony)
if [ ! -d hardware/dolby ]; then
   git clone https://github.com/Never-Alive/hardware_dolby -b sony-1.5 hardware/dolby
   git clone https://github.com/swiitch-OFF-Lab/packages_apps_DolbyUI -b 16.0 packages/apps/DolbyUI
fi

# Xiaomi hardware tree
if [ ! -d hardware/xiaomi/* ]; then
   git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi
fi

# Xiaomi hardware tree
if [ ! -d packages/apps/GameBar/* ]; then
   git clone --depth=1 https://github.com/Never-Alive/packages_apps_GameBar -b lineage-23.2 packages/apps/GameBar
fi

echo "Cloning Done!!!"
