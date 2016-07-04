# Vagrantfile for Django

## Requirement

* Virtualbox
* Vagrant

## Build VM

On your host machine:

* `$ vagrant plugin install vagrant-vbguest`
* `$ vagrant up`
    * This may fail with error `Failed to mount folders in Linux guest` just once.
* `$ vagrant reload`

## Start Django

On your guest machine:

* `$ django-admin startproject mysite`
* `$ python manage.py runserver 0.0.0.0:8000`
