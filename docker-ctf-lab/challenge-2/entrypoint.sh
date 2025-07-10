#!/bin/sh

# Ambil angka versi utama Debian (e.g., 11 dari "11.7")
version=$(grep -o '[0-9]\+' /etc/debian_version | head -1)

if [ "$version" -ge 11 ]; then
    echo "CTF{image_updated_properly}" > /flag.txt
else
    echo "No flag for insecure base image." > /flag.txt
fi

# Cetak isi flag.txt
exec cat /flag.txt
