#! /usr/bin/bash

pushd `mktemp -d`

    # Download my fortunes and create an index for them
    curl -L https://raw.githubusercontent.com/pabsan-0/fortunes/master/fortunes/bash_tips
    strfile -c % bash_tips bash_tips.dat
    
    # Install them system-wide
    mv bash_tips bash_tips.dat /usr/share/games/fortunes/

popd
