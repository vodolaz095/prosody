#!/usr/bin/env bash

echo "Building base image..."
docker build -t reg.vodolaz095.life/prosody:latest .

echo "Pushing to registry..."
docker push reg.vodolaz095.life/prosody:latest
