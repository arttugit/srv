#!/bin/bash

sudo apt install salt-minion

echo "master: 192.168.190.128" >> /etc/salt/minion

sudo systemctl restart salt-minion
