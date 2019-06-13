#!/usr/bin/env bash

cd /home/vagrant
go get github.com/petems/terraform-provider-extip
cd /home/vagrant/go/src/github.com/petems/terraform-provider-extip
make build
mkdir -p /home/vagrant/.terraform.d/plugins/
# Checking if the symlink exists already in case the running VM is re-provisioned.
if [[ -e ~/.terraform.d/plugins/terraform-provider-extip && -L ~/.terraform.d/plugins/terraform-provider-extip ]];then
    echo "File already exists"
else
    ln -s $GOPATH/bin/terraform-provider-extip ~/.terraform.d/plugins/
fi