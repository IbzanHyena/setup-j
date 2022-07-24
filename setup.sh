#!/bin/bash

set -euxo pipefail

wget "http://www.jsoftware.com/download/j${J_VERSION}/install/j${J_VERSION}_linux64.tar.gz"
tar -xzf "j${J_VERSION}_linux64.tar.gz"

pushd "j${J_VERSION}/bin"
  sudo bash -eux install-usr.sh

  echo "install 'all'" >> install.ijs
  echo "exit ''" >> install.ijs
  sudo ijconsole install.ijs

popd

rm -rf "j${J_VERSION}_linux64.tar.gz" "j${J_VERSION}" install.ijs

