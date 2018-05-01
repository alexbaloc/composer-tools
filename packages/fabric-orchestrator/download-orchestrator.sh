#!/bin/bash

echo "Downloading orchestrator files"

# Basic docker & scripts  
curl -O https://raw.githubusercontent.com/alexbaloc/composer-tools/master/packages/fabric-orchestrator/Dockerfile
curl -O https://raw.githubusercontent.com/alexbaloc/composer-tools/master/packages/fabric-orchestrator/entrypoint.sh \
  && chmod +x ./entrypoint.sh

# Download the fabric-tools development server next to it
curl -O https://raw.githubusercontent.com/alexbaloc/composer-tools/master/packages/fabric-orchestrator/download-fabric-tools.sh \
  && chmod +x ./download-fabric-tools.sh \
  && ./download-fabric-tools.sh

echo "Done"
