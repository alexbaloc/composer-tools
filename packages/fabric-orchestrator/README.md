# Docker to orchestrate a hlv11 fabric deployment

The docker-compose.yaml file can be used as a sample for starting/stopping a hyperledger fabric suite.
The sample can be started with:

```
docker-compose up -d
``` 

This will ensure the fabric images are downloaded (the downloadFabric.sh script) and the Fabric servers are started (the startFabric.sh script).

Closing the container (`docker-compose down`) will gracefully stop the started Hyperledger Fabric container and any chaincode containers.
