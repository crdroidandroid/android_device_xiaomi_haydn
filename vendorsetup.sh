echo 'Starting to clone stuffs needed to build for Haydn'

# Firmware
echo 'Cloning firmware'
git clone https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b thirteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica Camera'
git clone https://gitlab.com/Alucard_Storm/haydn-miuicamera -b thirteen-leica vendor/xiaomi/haydn-miuicamera

echo 'Adding slow-mo fix for Leica Camera'
cd hardware/interfaces
wget https://github.com/Astridxx/android_hardware_interfaces/commit/ca6551863fb82110688452981572d44a26806681.patch
patch -p1 <ca6551863fb82110688452981572d44a26806681.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
