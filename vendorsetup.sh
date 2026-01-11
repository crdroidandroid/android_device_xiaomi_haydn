# Common device tree (chipset tree)
if [ ! -d device/xiaomi/sm8350-common ]; then
   git clone https://github.com/Never-Alive/device_xiaomi_sm8350-common -b lineage-23.1 device/xiaomi/sm8350-common
fi

# Kernel
if [ ! -d kernel/xiaomi/sm8350 ]; then
   git clone --depth=1 https://github.com/Never-Alive/kernel_xiaomi_sm8350 --recursive -b lineage-23.1 kernel/xiaomi/sm8350
fi

# Main vendor tree
if [ ! -d vendor/xiaomi/haydn ]; then
   git clone --depth=1 https://github.com/Never-Alive/vendor_xiaomi_haydn -b lineage-23.1 vendor/xiaomi/haydn
fi

# Common vendor tree
if [ ! -d vendor/xiaomi/sm8350-common ]; then
   git clone --depth=1 https://github.com/Never-Alive/vendor_xiaomi_sm8350-common -b lineage-23.1 vendor/xiaomi/sm8350-common
fi

# MIUI-Camera
if [ ! -d vendor/xiaomi/miuicamera-haydn ]; then
   git clone --depth=1 https://gitlab.com/miui-cam/vendor-xiaomi-miuicamera-haydn -b lineage-23.0 vendor/xiaomi/miuicamera-haydn
fi

# Dolby
if [ ! -d hardware/dolby ]; then
   git clone --depth=1 https://github.com/Never-Alive/hardware_dolby -b sony-1.5 hardware/dolby
fi

# Remove hardware trees frok source
rm -rf hardware/xiaomi

# Xiaomi hardware tree
if [ ! -d hardware/xiaomi/* ]; then
   git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.1 hardware/xiaomi
fi
