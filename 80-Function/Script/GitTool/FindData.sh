#!/bin/bash
#adb push FindData.sh /data/local/tmp
#  . /data/local/tmp/FindData.sh
# 1. 检查制定的apk文件是否存在于system/app文件夹中
#!/bin/bash
echo "------------------------------------APK:"
cd /system/app
for apkFiles in *tr069* *AMTUpgrade* *PostCTEI*
do
	if [ -f "$apkFiles" ]
	then
		echo "$apkFiles: $(ls -l $apkFiles)"
	else
		echo "$apkFiles does not exist."
	fi
done


# 2. 检查预设的so和bin文件是否存在
#!/bin/bash
echo "------------------------------------so&bin:"
cd /system/lib64
for so in libamtTR069.so libamtUtils.so

do
    if [ -f "$so" ]
    then
		echo "$so:$(ls -l $so)"
        echo "$so exists."
    else
		echo "$so:$(ls -l $so)"
        echo "$so does not exist."
    fi
done

#!/bin/bash
cd /system/bin
do
	if [ -f "amtprox" ]
	then
		echo "amtprox exists."
	else
		echo "amtprox does not exist."
	fi
done

# 3. 检查amtprox服务是否在运行
#!/bin/bash
echo "------------------------------------amtprox"
service_status=$(ps -A | grep amtprox)
if [ -z "$service_status" ]
then
    echo "amtprox服务未在运行。"
else
    echo "amtprox服务正在运行，详细信息："
    echo "$service_status"
fi

# 4. 查看预设属性
#!/bin/bash
echo "------------------------------------config"
for prop in ro.serialno ro.build.version.incremental ro.build.hardware.id ro.product.manufacturer ro.product.manufactureroui ro.product.name ro.product.model ro.product.productclass persist.sys.config.acs ro.config.otaserver
do
    echo "$prop: $(getprop $prop)"
done
