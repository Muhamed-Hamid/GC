#!/bin/bash

yum update -y

useradd "$1"
echo "$2" > passwd "$1" --stdin
useradd -aG wheel $1

sed -i 's/^#\s*\(%wheel\s\+ALL=(ALL)\s\+NOPASSWD:\s\+ALL\)/\1/' /etc/sudoers'

