#!/bin/sh

# Default Redis server host and port
REDIS_HOST=${REDIS_HOST:-127.0.0.1}
REDIS_PORT=${REDIS_PORT:-6379}
# Default Redis queue command
COMMAND=${COMMAND:-worker}

rq $COMMAND "$@" --url redis://$REDIS_HOST:$REDIS_PORT
