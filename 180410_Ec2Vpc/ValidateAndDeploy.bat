@echo off
setlocal

set STACK_NAME=craiug23122

call aws cloudformation validate-template --template-body file://vpc-ec2.cf.json
if %errorlevel% neq 0 goto error

call aws cloudformation create-stack --stack-name %STACK_NAME% --template-body file://vpc-ec2.cf.json
if %errorlevel% neq 0 goto error

echo.
echo !! Successfully deployed
goto eof

:error
echo.
echo !! An error occurred
goto eof

:eof