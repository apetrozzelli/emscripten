# emscripten dev environment
*based upon ubuntu/trusty64*

[![Build Status](https://travis-ci.org/apetrozzelli/emscripten.svg?branch=master)](https://travis-ci.org/apetrozzelli/emscripten)

* download and install [Vagrant](https://www.vagrantup.com/).

* create the folder where you want to install your VM and then:

```bash
git clone https://github.com/apetrozzelli/emscripten.git
vagrant up
```

It will take some time as it is going to:

* download and install prerequisites
* download, build and install [emscripten SDK](http://kripken.github.io/emscripten-site/)

Each user must perform the following steps once:

* login with *vagrant* as user and *vagrant* as password:

```bash
cd /home/vagrant/emsdk/emsdk_portable
./emsdk activate latest
```

And the following step after each login:

```bash
source ./emsdk_env.sh
```

* to confirm everything is ok:

```bash
vagrant@vagrant-ubuntu-trusty-64:~/emsdk/emsdk_portable$ emcc --version
emcc (Emscripten gcc/clang-like replacement) 1.36.0 (commit 07b87426f898d6e9c677db291d9088c839197291)
Copyright (C) 2014 the Emscripten authors (see AUTHORS.txt)
This is free and open source software under the MIT license.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

vagrant@vagrant-ubuntu-trusty-64:~/emsdk/emsdk_portable$
```

To compile and run the simplest program built with emscripten:

```bash
cd ~
mkdir helloworld
cd helloworld
cp ~/emsdk/emsdk_portable/emscripten/master/tests/hello_world.cpp .
emcc hello_world.cpp
vagrant@vagrant:~/helloworld$ node a.out.js
hello, world!
```

# Go!

#Troubleshooting

> If you get an error like the following:

```bash
The private key to connect to this box via SSH has invalid permissions
set on it. The permissions of the private key should be set to 0600, otherwise SSH will
ignore the key. Vagrant tried to do this automatically for you but failed. Please set the
permissions on the following file to 0600 and then try running this command again:
```

> As suggested by the error message (which is not reported here fully) this is most likely because the file-system you are using does not support file permissions, e.g. FAT/NTFS on an USB thumb-drive.
The easiest way to overcome this limitation is to move the private_key file to your home directory and create a link to it:

```bash
mv .vagrant/machines/default/virtualbox/private_key ~
ln -s ~/private_key .vagrant/machines/default/virtualbox/private_key
```
