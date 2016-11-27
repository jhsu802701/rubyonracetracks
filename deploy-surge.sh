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

SURGE_NAME='rubyonracetracks'

##############################
# END: SET PERMANENT NAME HERE 
##############################

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
