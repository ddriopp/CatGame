#!/bin/bash

BUILD_WKS="/home/liyang/stage/actions-runner/demo_work/CatGame/CatGame"
GO_PKG_NAME="go1.16.7.linux-amd64.tar.gz"
GO_PKG_URL="https://golang.org/dl/$GO_PKG_NAME"

echo "build is in porgress ..."

if ! go version >/dev/null 2>&1; then
  wget $GO_PKG_URL -O $GO_PKG_NAME
  tar -C /usr/local -xzf $GO_PKG_NAME
  if ! grep '/usr/local/go/bin' "$HOME/.bash_profile" >/dev/null; then
    cat >> $HOME/.bash_profile << EOF
export PATH=$PATH:/usr/local/go/bin
EOF
  fi  
else
  echo "Go compiler was installed already"
fi

echo "Verify go compiler"

exit 0
