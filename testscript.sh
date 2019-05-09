#!/bin/bash

sudo apt install salt-minion

echo "master: 142.93.174.125" >> /etc/salt/minion

sudo systemctl restart salt-minion
