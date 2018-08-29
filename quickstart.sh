#!/bin/bash

cd /tmp
curl -o setup.zip -L  https://github.com/andrewwh/ansible-workstation/archive/master.zip && unzip setup.zip
cd ansible-workstation-master
chmod +x ./bootstrap.sh

if [ "$1" != "download" ]; then
    sudo ./bootstrap.sh
fi