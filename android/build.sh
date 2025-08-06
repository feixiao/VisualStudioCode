#!/bin/bash


# For Ubuntu

#export ANDROID_NDK=/opt/ndk/android-ndk-r26d

# For OSX
export ANDROID_NDK=/Applications/AndroidNDK12479018.app/Contents/NDK
export PATH=${PATH}:${ANDROID_NDK}/toolchains/llvm/prebuilt/darwin-x86_64/bin


dirname=$(dirname "$0")
WORKSPACE=$(cd "$dirname"; pwd)
echo $WORKSPACE

#APP_ABIs="arm64-v8a armeabi-v7a"
APP_ABIs="arm64-v8a"

rm -rf $WORKSPACE/build

for APP_ABI in ${APP_ABIs}
do

cd $WORKSPACE
mkdir build_${APP_ABI} && cd build_${APP_ABI}

cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
 -DANDROID_ABI=${APP_ABI} \
 -DANDROID_PLATFORM=android-29 \
 -DCMAKE_SYSTEM_NAME=Android \
 -DCMAKE_BUILD_TYPE=Debug \
 -DTARGET_OS_NAME=Android \
 ../
make -j4

#rm -rf $WORKSPACE/android_build_${APP_ABI}
done

