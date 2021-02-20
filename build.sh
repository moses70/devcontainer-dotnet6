#!/bin/bash

_tag=preview1

docker build .devcontainer -t moses70/dotnet6:$_tag --build-arg VARIANT=6.0 --build-arg INSTALL_NODE=false --build-arg INSTALL_ZSH=false --build-arg INSTALL_AZURE_CLI=false --build-arg UPGRADE_PACKAGES=true

docker push moses70/dotnet6:$_tag
