#!/bin/bash

if [ -d "/seeker" ] 
then
	cd /tmp/testing
	tar -xvf /seeker/seeker-agent.tgz
	cd /var/expressCart/
	npm install /tmp/testing/package/*.tgz 
	npm run testdata
	node app.js --require ./node_modules/@synopsys-sig/seeker
else
	npm run demo
fi


