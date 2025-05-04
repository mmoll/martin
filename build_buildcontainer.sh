#!/bin/sh

mkdir -p shared
docker build -t martin-build -f Dockerfile.build .
docker run -v ./shared:/shared martin-build /build/build_release.sh
docker build -t ghcr.io/maplibre/martin:main -f Dockerfile.run .
