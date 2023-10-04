#!/bin/bash
set -e

# Wait for the DB to be ready
# add any db waiting logic here

# Then exec the container's main process (what's set as CMD in the Dockerfile)
exec "$@"

