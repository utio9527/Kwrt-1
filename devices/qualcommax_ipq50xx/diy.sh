shopt -s extglob

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

rm -rf package/kernel/qca-* package/boot/uboot-envtools package/firmware/ipq-wifi package/firmware/ath11k-firmware

git_clone_path ipq50xx-pr https://github.com/hzyitc/openwrt-redmi-ax3000 target/linux/qualcommax/ipq50xx package/firmware/ipq-wifi package/firmware/ath11k-firmware package/boot/uboot-envtools

sed -i "s/wpad-basic-wolfssl/wpad-basic-mbedtls/" target/linux/qualcommax/ipq50xx/Makefile
