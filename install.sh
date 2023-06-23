#! /usr/bin/bash

pushd `mktemp -d`

    # Download my fortunes and create an index for them
    curl https://raw.githubusercontent.com/pabsan-0/fortunes/master/fortunes/pabsan -O
    strfile -c % pabsan pabsan.dat
    
    # Install them system-wide (requires sudo)
    sudo mv pabsan pabsan.dat /usr/share/games/fortunes/

popd
