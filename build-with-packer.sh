cd ./dependencies/ubuntu
cat ../../setup-emscripten.sh >> ./custom-script.sh
packer build -only=virtualbox-iso -var-file=../../ubuntu1404-emscripten.json ubuntu.json