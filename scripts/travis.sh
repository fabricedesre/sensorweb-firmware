#!/bin/sh

arm-none-eabi-gcc --version

curl https://sh.rustup.rs -sSf -o rustup.sh
chmod +x ./rustup.sh
./rustup.sh -y
export PATH=/home/travis/.cargo/bin:$PATH
rustup default nightly
rustup component add rust-src
cargo install xargo
./build.sh
./build.sh --release
