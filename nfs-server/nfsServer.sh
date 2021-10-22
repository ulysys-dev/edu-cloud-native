#!/bin/bash

# Ref : https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-16-04


sudo apt-get update
sudo apt-get install -y nfs-kernel-server

sudo mkdir -p /var/nfs/data{1..9}
sudo chown nobody:nogroup -R /var/nfs/

cat<<EOF | sudo tee -a /etc/exports
/var/nfs/data1  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data2  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data3  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data4  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data5  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data6  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data7  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data8  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
/var/nfs/data9  10.0.2.11(rw,sync,no_subtree_check) 10.0.2.12(rw,sync,no_subtree_check) 10.0.2.13(rw,sync,no_subtree_check)
EOF

sudo systemctl restart nfs-kernel-server


