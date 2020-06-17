#!/usr/bin/env bash
### compile codec m2u
echo Compile Codec for M2U(R40).
echo Downloading sources.
git clone https://github.com/juanesf/codec
wait
echo Changing folder.
cd codec
cd uncompiled
echo Compiling...
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
wait
echo Copy modules.
sudo cp sun4i-codec.ko /lib/modules/$(uname -r)/kernel/sound/soc/sunxi
echo Done
exit 0
### speeaker-test -t wav -c 2 -D hw:0,0
### speaker-test -c2 -D hw:3,0
### speaker-test -t wav -c2 -D hw:3,0