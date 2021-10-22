#!/bin/bash

# Ref : https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-16-04


sudo apt-get update && apt-get install -y nfs-common

showmount -e node1
