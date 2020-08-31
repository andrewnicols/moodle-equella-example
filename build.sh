#!/bin/bash
set -x


if [ ! -d oeq ]
then
  # Clone openequella
  git clone https://github.com/openequella/openEQUELLA.git oeq

  # Download installer into openequella/docker dir
  wget https://github.com/openequella/openEQUELLA/releases/download/2020.1.3/equella-installer-2020.1.3.zip -O oeq/docker/equella-installer-2020.1.3.zip
fi

docker-compose up
