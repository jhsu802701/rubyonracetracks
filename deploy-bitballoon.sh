#!/bin/bash

# This is the script for deploying to BitBalloon.

# If you are using BitBalloon for this project, you should rename this
# script as deploy.sh.

# If you are not using BitBalloon for this project, you should delete this script.

# Not setting this environment variable results in the following error
# in css/style.scss:
# Invalid US-ASCII character "\xE2"
export LC_ALL='C.UTF-8'

echo '----------------------'
echo 'gem install bitballoon'
gem install bitballoon

sh build.sh

echo '-----------------------'
echo 'bitballoon deploy _site'
bitballoon deploy _site
