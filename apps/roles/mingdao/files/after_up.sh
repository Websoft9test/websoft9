#!/bin/bash
echo "mingdao special " >> /tmp/init_debug.txt
sudo systemctl stop mingdao
sudo docker stop $(docker ps -aq)
sudo docker rm $(docker ps -aq)
rm -rf /data/mingdao
/bin/rm -f /data/apps/mingdao/installer/first
sudo systemctl start mingdao
