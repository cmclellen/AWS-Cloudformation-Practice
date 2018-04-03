@echo off
setlocal

rem aws cloudformation validate-template --template-body file://autoscaling-with-update-policy.cf.json

aws cloudformation create-stack --stack-name craig3332 --template-body file://autoscaling-with-update-policy.cf.json