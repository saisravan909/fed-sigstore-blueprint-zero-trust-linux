#!/bin/bash
# Automation: Sigstore Workflow
IMAGE="ghcr.io/your-username/fed-app:latest"

echo "1. Signing image..."
cosign sign --yes $IMAGE

echo "2. Generating and Attaching SBOM..."
syft $IMAGE -o cyclonedx-json > sbom.json
cosign attest --yes --predicate sbom.json --type cyclonedx $IMAGE
