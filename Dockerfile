# Use a secure, minimal base image for Federal compliance
FROM alpine:3.19

# Install Sigstore/Cosign for image signing and verification
RUN apk add --no-cache cosign bash

# Create an app directory
WORKDIR /app

# Copy your local blueprint folders into the container
COPY ./policies /app/policies
COPY ./pipeline /app/pipeline
COPY ./docs /app/docs

# Set a non-root user for better security (Zero Trust principle)
USER 1000

# Default command to show the environment is ready
CMD ["echo", "Federal Sigstore Blueprint Container Ready"]
