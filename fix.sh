#!/bin/bash
# Fixing error on CentOS8:
# Failed to download metadata for repo 'appstream': Cannot prepare internal mirrorlist: No URLs in mirrorlist
# Created by Yevgeniy Goncharov, https://sys-adm.in

cd /etc/yum.repos.d/

echo "Checking base URL..."
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# yum update -y
echo "Done!"