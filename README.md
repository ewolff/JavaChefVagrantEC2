Sample Java Project with Chef
=============================

This is a sample to show how Chef can be used to configure a Java environment.

The Vagrantfile can be used to provision the Java application on a
virtual machine managed by Virtual Box. See http://vagrantup.com/
. To see the application running just use:
vagrant up

Another possibility is to provision the application on Amazon EC2. The
script to do this is configure-ec2.sh . It takes as parameters:
* the hostname of the system to deploy to
* the pem file for authentication
* the user name
This is only tested with the Ubuntu 11.10 image from
http://alestic.com/ .

This idea originates from http://opinionated-programmer.com/2011/06/chef-solo-tutorial-managing-a-single-server-with-chef/

The application is located in cookbooks/webapp/files/default .