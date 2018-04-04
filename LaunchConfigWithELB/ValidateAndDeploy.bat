@echo off
setlocal

aws cloudformation validate-template --template-body file://launchconfig-with-elb.cf.json
aws cloudformation create-stack --stack-name craig12121 --template-body file://launchconfig-with-elb.cf.json