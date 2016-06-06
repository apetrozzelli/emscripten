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
