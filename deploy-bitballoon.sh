#!/bin/bash

# This is the script for deploying to BitBalloon.

# If you are using BitBalloon for this project, you should rename this
# script as deploy.sh.

# If you are not using BitBalloon for this project, you should delete this script.

echo '----------------------'
echo 'gem install bitballoon'
gem install bitballoon

sh build.sh

echo '-----------------------'
echo 'bitballoon deploy _site'
bitballoon deploy _site
