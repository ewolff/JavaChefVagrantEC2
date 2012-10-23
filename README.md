Sample Java Project with Chef
=============================

This is a sample to show how Chef can be used to configure a Java environment.

The Vagrantfile can be used to provision the Java application on a
virtual machine managed by Virtual Box. See http://vagrantup.com/
. To see the application running just use:
vagrant up

Another possibility is to provision the application using chef
solo. The script install.sh does that.

The web application is located in cookbooks/webapp/files/default .