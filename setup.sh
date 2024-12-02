#!/bin/bash

# Set these variables and the run
# this file to configure the project:

CONTAINER_NAME_PREFIX=example-prefix
SERVER_PORT_INTERNAL=3000
SERVER_PORT_EXTERNAL=3002
DATABASE_PORT_INTERNAL=3306
DATABASE_PORT_EXTERNAL=3003
DATABASE_SCHEMA=example_schema

chmod +x .docker/init.sh .docker/destroy.sh .docker/start.sh .docker/stop.sh .docker/bash.sh .docker/network.sh
sed -i "s/__CONTAINER_NAME_PREFIX__/$CONTAINER_NAME_PREFIX/g" .docker/compose.yml .docker/init.sh .docker/destroy.sh .docker/start.sh .docker/stop.sh .docker/bash.sh .docker/network.sh
sed -i "s/__SERVER_PORT_INTERNAL__/$SERVER_PORT_INTERNAL/g" .docker/compose.yml
sed -i "s/__SERVER_PORT_EXTERNAL__/$SERVER_PORT_EXTERNAL/g" .docker/compose.yml
sed -i "s/__DATABASE_PORT_INTERNAL__/$DATABASE_PORT_INTERNAL/g" .docker/compose.yml
sed -i "s/__DATABASE_PORT_EXTERNAL__/$DATABASE_PORT_EXTERNAL/g" .docker/compose.yml
sed -i "s/__DATABASE_SCHEMA__/$DATABASE_SCHEMA/g" .docker/compose.yml
rm -rf setup.sh
