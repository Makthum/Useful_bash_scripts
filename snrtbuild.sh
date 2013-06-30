cp ./spp_arpspoof.c /home/mohamed/snort/snort-2.9.3/src/preprocessors/spp_arpspoof.c
cd /home/mohamed/snort/snort-2.9.3
./configure --prefix=/usr/local/snort --enable-sourcefire
make
make install
