
mkdir -p libs
dirname=../app/build/intermediates/cmake/debug/obj
for abi in armeabi-v7a arm64-v8a; do
    echo cp -rf $dirname/$abi libs/
    cp -rf $dirname/$abi libs/
done

