@echo off
setlocal

time /t

rem aws cloudformation validate-template --template-body file://ebs-snapshot-on-delete.cf.json
aws cloudformation create-stack --stack-name craig20180402 --template-body file://ebs-snapshot-on-delete.cf.json