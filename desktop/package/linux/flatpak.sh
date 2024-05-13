#!/bin/bash
sudo apt install -y flatpak flatpak-builder appstream
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo
cd desktop/package/linux
flatpak-builder build/ exchange.haveno.Haveno.yml --force-clean --user --install-deps-from=flathub
flatpak build-export export build
flatpak build-bundle export haveno.flatpak exchange.haveno.Haveno --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo
