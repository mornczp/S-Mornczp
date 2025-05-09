#!/bin/bash
echo "请稍候，系统即将编译中……\n"
#make ARCH=arm64 rk3568-evb1-ddr4-v10.img -j16
source build/envsetup.sh
lunch rk3568_r-userdebug
rm -rf out/target/product/rk3568_r/
./build.sh -KAuo
echo "系统编译完成\n"

