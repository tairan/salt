#!/bin/bash

yum install -y salt-master python-pygit2

systemctl enable salt-master
systemctl start salt-master

firewall-cmd --add-port=4505/tcp --permanent
firewall-cmd --reload
