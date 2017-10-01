#!/usr/bin/env bash

  # see http://kripken.github.io/emscripten-site/docs/getting_started/downloads.html#linux
    sudo apt-get update
    sudo apt-get install -y build-essential
  #  sudo apt-get install -y cmake
    wget http://www.cmake.org/files/v3.5/cmake-3.5.2.tar.gz
    tar xf cmake-3.5.2.tar.gz
    cd cmake-3.5.2
    sudo ./configure
    sudo make && sudo make install 
    cd .. 
    export PATH=/usr/local/bin:$PATH
    export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
    cmake --version
    sudo apt-get install -y python2.7
    sudo apt-get install -y default-jre
    sudo apt-get install -y git-core
    sudo apt-get install -y subversion
  # see https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
    sudo apt-get install -y nodejs
  # see http://kripken.github.io/emscripten-site/docs/getting_started/downloads.html#windows-osx-and-linux-installing-the-portable-sdk
    rm -rf ./emsdk && mkdir ./emsdk
    cd ./emsdk/
    rm -rf ./emsdk-portable.tar.gz*
    wget https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz
    tar -xvf ./emsdk-portable.tar.gz
    chmod o+w emsdk-portable/
    cd emsdk-portable/
    ./emsdk update
    ./emsdk install latest
	echo "Installation completed. Execute the following commands once connected with your user:"
	echo "cd ${PWD}"
	echo "./emsdk activate latest"
    echo "source ./emsdk_env.sh"
