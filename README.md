# redis-queue docker
Minimal docker for [redis-queue](https://python-rq.org/)

IMPORTANT NOTE: redis queue needs to run in the python project root folder, hence you need to map the code folder into the redis-queue docker

## Build
`docker build -t rq .`

## Run
`docker run -d rq`

## Configure
### Environment variables
REDIS_HOST: Redis host, default to 127.0.0.1

REDIS_PORT: Redis port, default to 6379

COMMAND: Redis queue command, default to worker

### Redis queue CLI arguments
All supported redis queue command options can be specified with the docker run command.

Example, run redis queue with scheduler:

`docker run -d rq --with-scheduler`

## docker-compose
`docker-compose up -d`
