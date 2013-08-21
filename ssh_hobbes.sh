#!/bin/bash
#IP=130.60.24.34
#IP=130.60.24.38
#IP=130.60.24.37
IP=${1}
ssh-keygen -f "/home/yy/.ssh/known_hosts" -R ${IP}
ssh -i ~/.ssh/yyimls root@${IP} -L10080:localhost:8080

