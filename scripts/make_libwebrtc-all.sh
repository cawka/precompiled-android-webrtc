#!/bin/sh

echo "create libwebrtc-all.a" > libwebrtc-all.mri

for lib in $(find obj -name '*.a' | grep -v test); do 
    echo "addlib $lib" >> libwebrtc-all.mri
done

echo "save" >> libwebrtc-all.mri
echo "end" >> libwebrtc-all.mri

