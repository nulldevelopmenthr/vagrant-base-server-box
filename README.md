vagrant-base-server-box
=======================

This repo is used to build base ubuntu server box for the purpose of easier creation of extending boxes later.

Based on Ubuntu Trusty 64-bit (14.04) server.

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
vagrant package --output "trusty64-$(date +'%Y%m%d').box"
```


#####Step 3) Import box to current server
```
vagrant box add --name "trusty64-$(date +'%Y%m%d')" "trusty64-$(date +'%Y%m%d').box"
```

###Optional commands:

#####Destroy current box, it's not needed any more.
```
vagrant destroy
```

#####Removing the box from current server (if not needed any more)
```
vagrant box remove "trusty64-$(date +'%Y%m%d')"
```


=====
###List of already generated boxes:

2015-05-25 -> http://dwnl.nulldevelopment.hr/boxes/trusty64-20150825.box
