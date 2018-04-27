#!/bin/bash
echo "started"

IS_DEVMODE=${HL_FABRIC_DEVMODE:="false"}

echo "Running with HL_FABRIC_VERSION ${HL_FABRIC_VERSION}"
echo "  Container version ${HL_FABRIC_TAG}"
echo "  Devmode ${IS_DEVMODE}"
echo "  Docker composer network name ${EXTERNAL_NETWORK_NAME}"
echo "  Local host fabric resource path ${HL_FILES_ROOT_PATH}"

if [ "${IS_DEVMODE}" == "true" ]; then
    START_FABRIC_SCRIPT_PARAMS=--dev
fi

./downloadFabric.sh && ./startFabric.sh ${START_FABRIC_SCRIPT_PARAMS}

function gracefulShutdown {
  echo "Shutting down!"
  ./stopFabric.sh && ./teardownFabric.sh
}
trap gracefulShutdown SIGTERM

exec "$@" &
while true
do
  tail -f /dev/null & wait
done
