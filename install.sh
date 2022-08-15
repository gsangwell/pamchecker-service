#!/bin/bash

yum install -y python3-pam 

mkdir /opt/stack/pamchecker
cp pamchecker.py /opt/stack/pamchecker/pamchecker.py
cp pamchecker.service /etc/systemd/system/pamchecker.service

systemctl enable --now pamchecker

