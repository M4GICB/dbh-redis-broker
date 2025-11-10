# Use a specific Redis base image — pin to a known good version
FROM redis:7.2-alpine

# Environment variables — can be overridden at runtime via .env or --env-file
ENV REDIS_PASSWORD= \
    REDIS_PORT=6379

# Expose the Redis port
EXPOSE ${REDIS_PORT}

# Volume for data persistence
VOLUME ["/data"]

# Start Redis, requiring password if set
CMD ["sh", "-c", "if [ -n \"$REDIS_PASSWORD\" ]; then \
    redis-server --requirepass \"$REDIS_PASSWORD\"; \
    else \
    redis-server; \
    fi"]
