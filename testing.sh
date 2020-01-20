#!/bin/bash

set +x

if [ -d "/seeker" ] 
then
	mkdir /tmp/seeker
	cp /seeker/seeker-agent.tgz /tmp/seeker
	
	echo "Install sensor"
	npm install /tmp/seeker/seeker-agent.tgz --save --prefix seeker
	env | grep SEEK
	cd /var/expressCart
	
	npm run testdata
	node --require ./seeker/node_modules/@synopsys-sig/seeker app.js
else
	npm run demo
fi


