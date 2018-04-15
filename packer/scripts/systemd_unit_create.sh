#!/bin/bash

mv /home/appuser/puma.service /etc/systemd/system/ 

cd ~/
git clone -b monolith https://github.com/express42/reddit.git
cd ./reddit
bundle install

cd /home/appuser/reddit
bundle binstubs puma --path ./sbin

systemctl daemon-reload
systemctl enable puma
systemctl start puma
