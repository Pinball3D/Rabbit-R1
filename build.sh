#!/bin/bash

# Prompt user for build type
Clear
echo "Select the build type:"
echo "1. Original"
echo "2. Android (No-Root)"
echo "3. Switch Port"
read -p "Enter your choice (1/2/3): " choice

# Set build type and smali folder based on user input
case $choice in
  1) 
    build_type="original"
    ;;
  2)
    build_type="android (non root)"
    ;;
  3)
    build_type="switch port"
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

# Build APK using apktool
apktool b "${build_type}/smali" -o "${build_type}/apk/Rabbit R1 ${build_type}.apk"

# Sign the APK
java -jar "/Users/Andrew/Downloads/Uber APK Signer 1.jar" --apks "${build_type}/apk/Rabbit R1 ${build_type}.apk"

# Rename the signed APK
mv "${build_type}/apk/Rabbit R1 ${build_type}-aligned-debugSigned.apk" "${build_type}/apk/Rabbit R1 ${build_type}.apk"

# Decompile the APK using jadx
jadx -d "${build_type}/java" "${build_type}/apk/Rabbit R1 ${build_type}.apk"

rm "${build_type}/apk/Rabbit R1 ${build_type}-aligned-debugSigned.apk.idsig"

echo "Build and decompile process completed for ${build_type} build."