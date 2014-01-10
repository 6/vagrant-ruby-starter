This will install a barebones Ubuntu 12.04 machine with Ruby, RVM, and Heroku tools set up.

### Prerequisites

You must have the following software installed on your computer:

- VirtualBox: https://www.virtualbox.org/wiki/Downloads
- Vagrant: http://www.vagrantup.com/downloads.html

### Getting started

Clone the repository and `cd` into it:

```
git clone https://github.com/6/vagrant-ruby-starter.git
cd vagrant-ruby-starter
```

Next, provision the machine by running `vagrant up`. The first time you run this, it may take several minutes as it will have to download the Ubuntu box and install all software.

Once this is done, you can ssh into the machine with `vagrant ssh`. Confirm that Ruby and RVM are installed by running `rvm list`, which should show the latest Ruby installed.
