#!/bin/bash

cd /opt/openset

if [ -d /opt/openset/openset ]; then
  rm -rf /opt/openset/openset
fi

git clone --recursive https://github.com/perple-io/openset.git
ls ./openset
