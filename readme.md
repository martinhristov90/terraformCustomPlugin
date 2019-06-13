## This repository provides a simple Vagrantfile to use with Vagrant, providing setup environment with Terraform, Go and custom plugin for Terraform.

## How to install Vagrant :

- Information about installing Vagrant can be found on the official HashiCorp website [here](https://www.vagrantup.com/docs/installation/)

## How to use it :

- In a directory of your choice, clone the github repository with :
```
git clone https://github.com/martinhristov90/terraformCustomPlugin.git`
```
- Change into the directory using :
```
cd terraformCustomPlugin
```
- Execute `vagrant up`
- It might take some time to download the boxes since you do not have them added to Vagrant.
- Check with `vagrant status` that you have both Vagrant boxes running. The output should look like this:
```shell
Current machine states:

default                   running (virtualbox)

The VM is running. To stop this VM, you can run `vagrant halt` to
shut it down forcefully, or you can run `vagrant suspend` to simply
suspend the virtual machine. In either case, to restart it again,
simply run `vagrant up`.
```
- SSH into the Vagrant box with :
```
vagrant ssh
```
- Now you can see that in `/home/vagrant/` there is a file named `main.tf` in which is specified the custom plugin `extip` and using data source provided by it.
- You can execute `terraform init`, so the plugin can be initialized. 
- Next, `terraform plan` to view what are the actions that are going to be performed by Terraform. The output should look like this :
```
data.extip.external_ip: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
```
Using this plugin no infrastructure is going to be chaged.
- Now, you can run `terraform apply` and Terraform is going to execute the plugin and it is going to return your external IP address,the output should look like this:
```
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

external_ip = YOUR_IP_IS_GOING_TO_BE_HERE
```
- To stop the running machine execute `vagrant halt`, to destroy the setup use `vagrant destroy`.
