#!/usr/bin/env nix-shell
#! nix-shell shell.nix -i bash --pure

git submodule update --init

./vcpkg/bootstrap-vcpkg.sh

./vcpkg/vcpkg install

./config.sh champsim_config.json
make -j


# vim: ft=nix
