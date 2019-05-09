#!/bin/bash -ex

/usr/local/bin/jenkins.sh &

sleep 60

p=`pidof java`

echo $p

kill -9 $p

cp /var/tmp/jenkins_tmp/* /var/jenkins_home/

# run jenkins as usual
/usr/local/bin/jenkins.sh
