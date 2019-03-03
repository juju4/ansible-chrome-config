[![Build Status - Master](https://travis-ci.org/juju4/ansible-chrome-config.svg?branch=master)](https://travis-ci.org/juju4/ansible-chrome-config)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-chrome-config.svg?branch=devel)](https://travis-ci.org/juju4/ansible-chrome-config/branches)
# Chrome configuration ansible role

Ansible role to setup Chrome system-wide
* extensions

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Ubuntu 14.04, 16.04, 18.04 and Centos7

## Example Playbook

Just include this role in your list.
For example

```
- hosts: all
  roles:
    - juju4.chrome-config
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.chrome-config
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.chrome-config/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* To validate chrome configuration, you can check chrome://policy and chrome://management.
  Pay attention to typo and trailing space!

## FAQ

* How to assess extension security and privacy?
Outside of your own assessment, Duosecurity offers a great tool
https://duo.com/blog/crxcavator
https://crxcavator.io/

## License

BSD 2-clause

