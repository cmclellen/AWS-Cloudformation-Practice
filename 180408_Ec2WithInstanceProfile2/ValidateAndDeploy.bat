@echo off
setlocal

set STACK_NAME=craig4441

call aws cloudformation validate-template --template-body file://ec2-with-instanceprofile.cf.json
if %errorlevel% neq 0 goto error

call aws cloudformation create-stack --capabilities CAPABILITY_IAM --stack-name %STACK_NAME% --template-body file://ec2-with-instanceprofile.cf.json
if %errorlevel% neq 0 goto error

echo.
echo !! Successfully created stack
goto eof

:error
echo.
echo !! An error occurred
goto eof

:eof
echo.