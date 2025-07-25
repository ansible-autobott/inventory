# Inventory
Boilerplate inventory for ansible-autobott

## Usage

To set up your own inventory we recommend to clone this repository and push it to your own git.

1. Clone this repository 
```
git clone git@github.com:ansible-autobott/inventory.git
cd inventry
```
2. remove the original remote
```
git remote remove origin
```
3. add the new remote, replace the URL with your new repository's address.

```
git remote add origin https://github.com/your-username/your-new-repo.git
```

4. check your remote
```
git remote -v
```
5. push to your new repository
```
git branch -M main 
git push -u origin main
```

note: if you don't intend to use vagrant VMs, you can delete the `vagrant` folder


## Vagrant

This project includes an example Vagrant VM that can be used to test the inventory.

**Important notes about this vagrant VM**:
* This vagrant image builds on top of the base image from Autobott, check Autobott documentation for details
* This Vagrant VM will use your host network and **expects** that your network has an DHCP server.+
* the DHCP server should also assign the domain ansible-autobott-example.lan AND all subdomains (otherwise you need to add the relevant entry to /etc/hosts)

start the vm with
```
cd vagrant
vagrant up
```

You can then access the VM with `ssh vagrant@ansible-autobott-example` use password `vagrant`

to enroll into autobott

```
# cd ansible-autbott
make enroll INV=../ansible-inventory/inventory.yaml ANSIBLE_USER=vagrant ANSIBLE_PASS=vagrant HOST=ansible-autobott-example
```

after enrollment is done you can verify the ans service account by accessing with:
```
ans@ansible-autobott-example -i vagrant/autobott-key 
```

To run ansible now, add the provided **INSECURE** key to your ssh agent
```
ssh-add vagrant/autobott-key
```
and run ansible
```
make run INV=../ansible-inventory/inventory.yaml TAG=homepate
```

