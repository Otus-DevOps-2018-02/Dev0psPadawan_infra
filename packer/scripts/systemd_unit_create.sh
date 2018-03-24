#!/bin/bash

wget -P /etc/systemd/system/ https://gist.githubusercontent.com/Dev0psPadawan/749536088d99877bff7a260ad2ccd324/raw/01c0a5e05b09f777537aca444e3e56fee380f827/puma.service

cd /home/appuser/reddit
bundle binstubs puma --path ./sbin

systemctl daemon-reload
systemctl enable puma
systemctl start puma
