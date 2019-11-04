#!/bin/bash

if [ -d "/seeker" ] 
then
	cd /tmp/testing
	tar -xvf /seeker/seeker-agent.tgz
	cd /var/expressCart/
	npm install /tmp/testing/package/*.tgz 
fi

npm run demo
