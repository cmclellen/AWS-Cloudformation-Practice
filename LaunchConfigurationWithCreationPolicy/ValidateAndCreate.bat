@echo off
setlocal

aws cloudformation validate-template --template-body file://launch-config-with-creation-policy.cf.json
aws cloudformation create-stack --stack-name craig1234 --template-body file://launch-config-with-creation-policy.cf.json