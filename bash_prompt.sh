#!/bin/bash

# sudo su
# touch sc.sh
# chmod 777 sc.sh

### Change bash propt. Add this to the end of ~/.bashrc file. And for root user add this to the ~/root/.bashrc in the sudo mode
echo "USER_NAME=\$(whoami)" >> .bashrc
echo "H_NAME=\$(hostname)" >> .bashrc
echo "IP_ADDRESS=\$(ifconfig | grep -C 1  enp0s8 | grep inet | awk '{print \$2}')" >> .bashrc
echo "FINAL=\"\${USER_NAME}-\${H_NAME}-\${IP_ADDRESS}\"" >> .bashrc
echo "PS1=\$(echo -e  \"\\033[1;32m\${FINAL} ==> \\033[0m\")" >> .bashrc

sudo su

echo "USER_NAME=\$(whoami)" >> /root/.bashrc
echo "H_NAME=\$(hostname)" >> /root/.bashrc
echo "IP_ADDRESS=\$(ifconfig | grep -C 1  enp0s8 | grep inet | awk '{print \$2}')" >> /root/.bashrc
echo "FINAL=\"\${USER_NAME}-\${H_NAME}-\${IP_ADDRESS}\"" >> /root/.bashrc
echo "PS1=\$(echo -e  \"\\033[1;32m\${FINAL} ==> \\033[0m\")" >> /root/.bashrc

exit