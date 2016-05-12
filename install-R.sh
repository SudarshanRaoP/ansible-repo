#!/bin/bash

if [[ -z "$1" ]];then
    echo "No hostgroup provided."
    exit
else
    ansible $1 -m yum -a "name=epel-release state=latest"
    ansible $1 -m yum -a "name=R state=present"
fi
