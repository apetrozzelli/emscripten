#!/usr/bin/env sh

git submodule init
git submodule update
cd dependencies/ubuntu
cat ../../setup-emscripten.sh >> ./custom-script.sh
packer build -only=virtualbox-iso -var-file=../../ubuntu1404-emscripten.json ubuntu.json
git checkout custom-script.sh
