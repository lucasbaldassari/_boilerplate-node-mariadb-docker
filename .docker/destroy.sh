#!/bin/bash

docker compose --project-directory=./.docker down
sudo rm -rf ./.docker/database
