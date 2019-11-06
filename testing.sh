#!/bin/bash

set +x

if [ -d "/seeker" ] 
then
	cd /tmp/testing
	tar -xvf /seeker/seeker-agent.tgz
	cd /var/expressCart/
	echo "Install sensor"
	npm install /tmp/testing/package/*.tgz 
	env | grep SEEK
	npm run testdata
	node app.js --require ./node_modules/@synopsys-sig/seeker
else
	npm run demo
fi


