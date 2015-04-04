## Synopsis

This is a puppet master test environment complete with a client.  This is used mainly for my training in puppet.

## Installation

puppet files go in puppet diectory:

file | directory
-----|------------
manifests | puppet/manifests
modules | puppet/modules

to start simply run:

vagrant up

to connect to each system:

vagrant ssh puppet-master
vagrant ssh puppet-client
