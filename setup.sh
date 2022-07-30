#!/bin/bash

set -euxo pipefail

sudo apt-get update
sudo apt-get install -y wget

wget "https://www.jsoftware.com/download/j${J_VERSION}/install/j${J_VERSION}_linux64.tar.gz"
tar -xzf "j${J_VERSION}_linux64.tar.gz"

pushd "j${J_VERSION}/bin"
  sudo bash -eux install-usr.sh

  sudo ijconsole -js "install 'all'" -js "exit''"
popd

rm -rf "j${J_VERSION}_linux64.tar.gz" "j${J_VERSION}"

