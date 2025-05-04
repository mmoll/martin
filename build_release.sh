#!/bin/sh

cd /build
cargo build --release --workspace
cp -a target/release/martin target/release/martin-cp target/release/mbtiles /shared/
