  # see http://kripken.github.io/emscripten-site/docs/getting_started/downloads.html#linux
    sudo apt-get update
    sudo apt-get install -y build-essential
    sudo apt-get install -y cmake
    sudo apt-get install -y python2.7
    sudo apt-get install -y default-jre
    sudo apt-get install -y git-core
    sudo apt-get install -y subversion
  # see https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
    sudo apt-get install -y nodejs
	sudo apt-get autoremove -y
  # see http://kripken.github.io/emscripten-site/docs/getting_started/downloads.html#windows-osx-and-linux-installing-the-portable-sdk
    mkdir ./emsdk
    cd ./emsdk/
    rm -rf ./emsdk-portable.tar.gz*
    wget https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz
    tar -xvf ./emsdk-portable.tar.gz
    chmod o+w emsdk_portable/
    cd emsdk_portable/
    ./emsdk update
    ./emsdk install latest
	echo "Installation completed. Execute the following commands once connected with your user:"
	echo "cd ${PWD}"
	echo "./emsdk activate latest"
    echo "source ./emsdk_env.sh"
