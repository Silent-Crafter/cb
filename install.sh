#!/bin/bash

mkdir -p /usr/local/bin

/sbin/chmod +x backlight
/sbin/chmod +x cb

cp -v ./backlight /usr/local/bin
cp -v ./cb /usr/local/bin
cp -v ./backlight.1.gz /usr/share/man/man1
cp -v ./cb.1.gz /usr/share/man/man1
cp -v ./backlight.service /usr/lib/systemd/system/

/sbin/systemctl daemon-reload
/sbin/systemctl enable backlight.service
/sbin/systemctl start backlight.service

echo
echo "Installation Completed"
echo
echo "Chack the man pages for info: cb(1) and backlight(1)"
echo
