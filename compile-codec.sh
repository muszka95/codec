#!/usr/bin/env bash
###compile codec m2u
echo "\033[36m Compile Codec for M2U(R40).\033[0m"
echo "\033[36m downloading sources.\033[0m"
git clone https://github.com/juanesf/codec
wait
echo "\033[36m changing folder.\033[0m"
cd codec
cd uncompiled
echo "\033[36m compiling....\033[0m"
make -C /lib/modules/$(uname -r)/build M=$(pwd) modules
wait
echo "\033[36m copy modules.\033[0m"
sudo cp sun4i-codec.ko /lib/modules/$(uname -r)/kernel/sound/soc/sunxi

##speeaker-test -t wav -c 2 -D hw:0,0
##speaker-test -c2 -D hw:3,0
##speaker-test -t wav -c2 -D hw:3,0