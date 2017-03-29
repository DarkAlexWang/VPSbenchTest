#!/bin/sh

#echo 'time arc a -mx temp.arc linux'
#rm temp.arc
#time arc a -mx temp.arc linux

echo 'time openssl speed sha1'
time openssl speed sha1

echo 'time tar cf - linux | bzip2 -9 - > temp.tar.bz2'
rm temp.tar.bz2
time tar cf - linux | bzip2 -9 - > temp.tar.bz2

echo 'time dd if=/dev/zero of=test bs=64k count=5k oflag=dsync && rm test'
time dd if=/dev/zero of=test bs=64k count=5k oflag=dsync && rm test

time wget --output-document=/dev/null http://ipv4.download.thinkbroadband.com/512MB.zip

#wget ftp://ftp.kernel.org/pub/linux/kernel/v2.4/linux-2.4.0.tar.bz2
#time tar -xvf linux-2.4.0.tar.bz2
