@echo off
setlocal

aws cloudformation validate-template --template-body file://launchconfig-with-elb-pt2.cf.json

aws cloudformation create-stack --stack-name craig123412221221 --template-body file://launchconfig-with-elb-pt2.cf.json 