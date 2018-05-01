#!/bin/bash

OUTPUT_FOLDER=${1}

if [ "${1}" != "" ]; then
    OUTPUT_FOLDER=${1}
else
    OUTPUT_FOLDER="fabric-tools"
fi


echo "Downloading tools to ${OUTPUT_FOLDER}"

mkdir ./${OUTPUT_FOLDER}
cd ./${OUTPUT_FOLDER}

curl -O https://raw.githubusercontent.com/alexbaloc/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz \
  && tar -xvf fabric-dev-servers.tar.gz

#cleanup
rm fabric-dev-servers.tar.gz

echo "Download done!"

cd ..
