#!/bin/bash

set +x

if [ -d "/seeker" ] 
then
	cd /tmp/testing
	tar -xvf /seeker/seeker-agent.tgz
	cd /var/expressCart/
	echo "Install sensor"
	npm install --prefix ./ /tmp/testing/package/*.tgz 
	env | grep SEEK
	npm run testdata
	node --require ./node_modules/@synopsys-sig/seeker app.js
else
	npm run demo
fi


