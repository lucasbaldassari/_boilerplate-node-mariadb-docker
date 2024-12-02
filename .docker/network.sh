#!/bin/bash

docker network inspect __CONTAINER_NAME_PREFIX__--network | grep "Gateway"
