#!/bin/bash
# see http://opinionated-programmer.com/2011/06/chef-solo-tutorial-managing-a-single-server-with-chef/
# Usage: ./config-ec2.sh [host] [key] [user] 
 
host="${1:-192.168.56.1}"
key="${2:-blah.pem}"
user="${3:-ubuntu}"

# The host key might change when we instantiate a new VM, so
# we remove (-R) the old host key from known_hosts
ssh-keygen -R "${host#*@}" 2> /dev/null
echo ssh -i "$key"  "$user"@"$host" 
tar cj . | ssh -i "$key" -o 'StrictHostKeyChecking no' "$user"@"$host" '
sudo rm -rf ~/chef &&
mkdir ~/chef &&
cd ~/chef &&
tar xj &&
sudo bash install-ec2.sh'
cd ..