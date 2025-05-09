#!/bin/bash
echo "请稍候，系统即将编译中……\n"
#make ARCH=arm64 rk3528-evb1-ddr4-v10.img -j16
source build/envsetup.sh
lunch rk3528_box-userdebug
rm -rf out/target/product/rk3528_box/
./build.sh -KAuo
echo "系统编译完成\n"

