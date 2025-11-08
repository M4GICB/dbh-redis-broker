# DBH Redis Broker
 
This repo contains the configuration for running the Redis broker used by DBH microservices.

## Setup

1. Copy `.env.template` to `.env.local` or `.env.prod`
2. Update the values as needed:
   - `REDIS_PASSWORD`
   - `REDIS_PORT`
   - `REDIS_CONTAINER_NAME`
   - `REDIS_VERSION`

## Deployment

```bash
# Deploy locally
cp .env.template .env.local
./scripts/deploy.sh

# Deploy to production (make sure .env.prod is set)
cp .env.prod .env
./scripts/deploy.sh
