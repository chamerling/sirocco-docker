#!/bin/bash

# Run keystone in detached mode from the local Docker file
CONTAINER_ID=$(docker run -d -t chamerling/sirocco-docker)

# Get the container information
docker inspect $CONTAINER_ID

# Go back to the container...
echo "Check the user and admin ports in the JSON above, FYI CONTAINER ID is $CONTAINER_ID"