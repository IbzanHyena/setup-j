#!/bin/bash

set -euxo pipefail

wget "https://www.jsoftware.com/download/j${J_VERSION}/install/j${J_VERSION}_linux64.tar.gz"
tar -xzf "j${J_VERSION}_linux64.tar.gz"

pushd "j${J_VERSION}/bin"
  sudo bash -eux install-usr.sh
  TEMP=$(sudo ijconsole -js "echo jpath '~temp'" -js "exit ''")
  sudo mkdir -p "$TEMP"
  sudo ijconsole -js "install '$J_ADDONS'" -js "exit''"
popd

rm -rf "j${J_VERSION}_linux64.tar.gz" "j${J_VERSION}"

