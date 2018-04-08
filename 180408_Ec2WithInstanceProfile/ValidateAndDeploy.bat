@echo off
setlocal

set STACK_NAME=craig5544

:validate
echo "Validating cloudformation template..."
call aws cloudformation validate-template --template-body file://ec2-with-instanceprofile.cf.json
if %errorlevel% NEQ 0 goto error

:deploy
echo "Creating stack..."
call aws cloudformation create-stack --capabilities CAPABILITY_IAM --stack-name %STACK_NAME% --template-body file://ec2-with-instanceprofile.cf.json
if %errorlevel% NEQ 0 goto error

echo.
echo !! Successfully deployed
echo.
goto eof

:error
echo.
echo !! An error occurred.
echo.

:eof