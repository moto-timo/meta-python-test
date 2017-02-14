#!/bin/bash -e

if [[ $# -lt 1 ]]; then
    echo "No Yocto branch specified, defaulting to master"
    echo "To change this pass a Yocto branch name as an argument to this script"
fi
branch=${1-master}

scp -oStrictHostKeyChecking=no -r build/downloads yocto-cache@build-cache.asterius.io:/srv/yocto-cache/

scp -oStrictHostKeyChecking=no -r build/sstate-cache yocto-cache@build-cache.asterius.io:/srv/yocto-cache/${branch}/

exit 0
