#!/usr/bin/env bash
sed -i '/172.17.0.*/d' $HOME/.ssh/known_hosts
cp ~/.ssh/id_rsa_andrei.pub your_key.pub
#now just use
#ssh root@172.17.0.1
