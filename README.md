# emscripten dev environment based upon ubuntu/trusty64
Download Vagrant from https://www.vagrantup.com/

Create the folder where you want to install your VM and then:

git clone https://github.com/apetrozzelli/emscripten.git .
vagrant up

It will take some time as it is going to download and install prerequisites and download, build and install emscripten SDK.

(Each user msu perform the following steps once)

Login with vagrant/vagrant:

cd /home/vagrant/emsdk/emsdk_portable
./emsdk activate latest
source ./emsdk_env.sh

To confirm everything is ok:

vagrant@vagrant-ubuntu-trusty-64:~/emsdk/emsdk_portable$ emcc --version
emcc (Emscripten gcc/clang-like replacement) 1.36.0 (commit 07b87426f898d6e9c677db291d9088c839197291)
Copyright (C) 2014 the Emscripten authors (see AUTHORS.txt)
This is free and open source software under the MIT license.
There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

vagrant@vagrant-ubuntu-trusty-64:~/emsdk/emsdk_portable$
