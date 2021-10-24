#!/bin/bash

# Ref : https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nfs-mount-on-ubuntu-16-04

sudo apt-get update && apt-get install -y nfs-kernel-server

# NFS 로 노출할 Directory를 아래와 같이 생성 및 권한을 부여합니다.
sudo mkdir -p /var/nfs/data-pv{1..3}
sudo chown nobody:nogroup -R /var/nfs/data-pv{1..3}

cat<<EOF | sudo tee -a /etc/exports
/var/nfs/data-pv1 node2(rw,sync,root_squash,no_subtree_check) node3(rw,sync,root_squash,no_subtree_check) node4(rw,sync,root_squash,no_subtree_check)
/var/nfs/data-pv2 node2(rw,sync,root_squash,no_subtree_check) node3(rw,sync,root_squash,no_subtree_check) node4(rw,sync,root_squash,no_subtree_check)
/var/nfs/data-pv3 node2(rw,sync,root_squash,no_subtree_check) node3(rw,sync,root_squash,no_subtree_check) node4(rw,sync,root_squash,no_subtree_check)
EOF

sudo systemctl restart nfs-kernel-server