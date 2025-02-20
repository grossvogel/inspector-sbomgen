#!/usr/bin/env bash
cd "$(dirname "$0")"

docker build --platform=linux/arm64 -t sbomgen:latest .

docker run --platform=linux/arm64 -v ./artifacts:/tmp/artifacts -v ./output:/tmp/output sbomgen:latest
