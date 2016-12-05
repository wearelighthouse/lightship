#!/bin/bash

# Create docker machine
docker-machine create --driver virtualbox default

# Add env stuff
eval "$(docker-machine env default | tee -a ~/.bash_profile)"

# Add launch agent
url -sL http://git.io/vsk46 | \
    sed -e "s?{{docker-machine}}?$(which docker-machine)?" \
        -e "s?{{user-path}}?$(echo $PATH)?" \
    >~/Library/LaunchAgents/com.docker.machine.default.plist && \
    launchctl load ~/Library/LaunchAgents/com.docker.machine.default.plist
