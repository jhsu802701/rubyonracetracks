#!/bin/bash

sh build.sh

# Install Surge if necessary.
if surge --version ; then
  echo '---------------'
  echo 'surge --version'
  surge --version
else
  echo '--------------------------'
  echo 'npm install --global surge'
  npm install --global surge
fi

echo '----------'
echo 'surge list'
surge list

################################
# BEGIN: SET PERMANENT NAME HERE 
################################

SURGE_NAME='blahblahblah'

##############################
# END: SET PERMANENT NAME HERE 
##############################

###########################
# BEGIN: SET TEMPORARY NAME
###########################

# Get time as a UNIX timestamp (seconds elapsed since Jan 1, 1970 0:00 UTC)
N="$(date +%s)"
SURGE_NAME="surge${N}" # Default name of database

#########################
# END: SET TEMPORARY NAME
#########################

# Deployment
URL=$SURGE_NAME.surge.sh
echo '-----------------'
echo "surge _site/ $URL"
surge _site/ $URL

# Enter "surge --help" for help on surge commands.
# Enter surge teardown <URL> to remove page.
echo '********************************************************************'
echo 'If all went well, you have successfully deployed your site to Surge.'
echo "URL: $URL"
echo
echo 'Please continue to follow the instructions in README-to_do.txt for'
echo 'the Surge option.'
