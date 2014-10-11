vagrant-base-server-box
=======================

This repo is used to build base ubuntu server box for the purpose of easier creation of extending boxes later.

Based on Ubuntu Trusty 32-bit (14.04) server.

=====
#Usage

###Boot new server:
```
vagrant up
```

###Create new base box (package):

#####Step 1) Boot vagrant
```
vagrant up
```

#####Step 2) After booting, generate package that will be named trusty32- with current date suffix
```
vagrant package --output "trusty32-$(date +'%Y%m%d').box"
```


#####Step 3) Import box to current server
```
vagrant box add --name "trusty32-$(date +'%Y%m%d')" "trusty32-$(date +'%Y%m%d').box"
```

###Optional commands:

#####Destroy current box, it's not needed any more.
```
vagrant destroy
```

#####Removing the box from current server (if not needed any more)
```
vagrant box remove "trusty32-$(date +'%Y%m%d')"
```
