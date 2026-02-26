# Use a lightweight Linux base
FROM alpine:3.19

# Install essential tools for Sigstore
RUN apk add --no-cache cosign bash

# Create an app directory
WORKDIR /app

# Copy your blueprint folders into the container
COPY ./policies /app/policies
COPY ./pipeline /app/pipeline
COPY ./docs /app/docs

# Standard practice for security: run as a non-root user
USER 1000

CMD ["echo", "Federal Sigstore Blueprint Ready"]
