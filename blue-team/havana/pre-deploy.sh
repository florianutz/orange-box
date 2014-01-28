#!/bin/bash
#Darryl Weaver, 26th January 2014

date
echo "Pre-deployment script to add machines to environment in advance of a demo"


juju add-machine --constraints tags=physical
juju add-machine --constraints tags=virtual
juju add-machine --constraints tags=virtual

sleep 3
for v in `seq 1 7`;
       	do
               	juju add-machine lxc:1
                sleep 3
       	done
date
juju status
echo "Run juju status to check if all machines in started state."
date
echo "Then run deploy.sh to deploy demo"

