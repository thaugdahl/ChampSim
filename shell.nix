{ pkgs ? import (fetchTarball "https://github.com/nixos/nixpkgs/archive/nixpkgs-unstable.tar.gz") {} }:

pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
        libgcc
        python3
        fmt
        git
        curl
        cmake
        vcpkg
        ninja
        zip
    ];

    buildInputs = with pkgs; [
        bear
    ];
}
