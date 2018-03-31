#!/bin/bash

# Not setting this environment variable results in the following error
# in css/style.scss:
# Invalid US-ASCII character "\xE2"
export LC_ALL='C.UTF-8'

sh build.sh

echo '**********************'
echo 'OPEN YOUR WEB BROWSER.'
echo 'GO TO THE FOLLOWING URL:'
echo 'http://localhost:4000'
echo 'NOTE: If you are using Docker or Vagrant, the port number may be different.'
echo '***************************************************************************'
if [ -f '/home/winner/shared/ports.txt' ]; then
  cat /home/winner/shared/ports.txt;
fi
echo '---------------------------------------'
echo 'bundle exec jekyll serve --host 0.0.0.0'
bundle exec jekyll serve --host 0.0.0.0
