# DBH Redis Broker

This repo contains the configuration for running the Redis broker used by DBH microservices.

## Setup

1. Copy `.env.template` to `.env` or `.env.local` or `.env.prod`
2. Update the values as needed:
   - `REDIS_PASSWORD`
   - `REDIS_PORT`
   - `REDIS_CONTAINER_NAME`
   - `REDIS_VERSION`

## Run Locally

1. Start Local Redis: `docker compose up --build -d`
2. Connect to local redis: `redis-cli -h 127.0.0.1 -p $REDIS_PORT -a $REDIS_PASSWORD`
3. See Keys In Local Redis: `keys *`
4. See Entries For Key In Local Redis: `lrange &KEY_NAME 0 -1`
5. Stop Local Redis: `docker compose down`

## Deployment

```bash
# Deploy locally
cp .env.template .env.local
./scripts/deploy.sh

# Deploy to production (make sure .env.prod is set)
cp .env.prod .env
./scripts/deploy.sh
```
