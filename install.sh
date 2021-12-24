#!/bin/bash

mkdir -p /usr/local/bin

chmod +x backlight
chmod +x cb
cp -v ./backlight /usr/local/bin
cp -v ./cb /usr/local/bin
cp -v ./backlight.1.gz /usr/share/man/man1
cp -v ./cb.1.gz /usr/share/man/man1

systemctl enable backlight.service
systemctl start backlight.service

echo "Installation Completed"
echo
echo "Chack the man pages for info: cb(1) and backlight(1)"
echo