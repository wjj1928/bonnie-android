
abi=$(adb shell getprop ro.product.cpu.abi)
echo $abi
biname=bonnie.so
#dirname=./app/build/intermediates/cmake/debug/obj/arm64-v8a
adb shell "rm -rf /data/local/tmp/*"

adb push libs/$abi/$biname /data/local/tmp/
adb shell chmod a+x /data/local/tmp/$biname
name=$(adb shell getprop ro.product.name)
echo "start..."
adb shell "/data/local/tmp/$biname -d /data/local/tmp -q -x 5 -n 128 -m $name"
echo "done"
