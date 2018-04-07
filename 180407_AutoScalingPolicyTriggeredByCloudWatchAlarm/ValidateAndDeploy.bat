@echo off
setlocal

set STACK_NAME=craig122

aws cloudformation validate-template --template-body file://autoscaling-triggered-by-alarm.cf.json
if %errorlevel% NEQ 0 goto error
aws cloudformation create-stack --stack-name %STACK_NAME% --template-body file://autoscaling-triggered-by-alarm.cf.json
if %errorlevel% NEQ 0 goto error
echo.
echo !! Successfully deployed
echo.
goto eof
:error
echo.
echo !! An error has occurred. Aborting...
echo.

:eof
