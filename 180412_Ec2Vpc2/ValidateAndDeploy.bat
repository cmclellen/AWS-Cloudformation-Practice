@echo off
setlocal

set STACK_NAME=craig12
set FILE_PATH=file://ec2-vpc.cf.yml

call aws cloudformation validate-template --template-body %FILE_PATH%
if %errorlevel% neq 0 goto error

call aws cloudformation create-stack --stack-name %STACK_NAME% --template-body %FILE_PATH%
if %errorlevel% neq 0 goto error

echo.
echo ! Successfully deployed
goto eof

:error
echo.
echo ! An error occurred.

:eof
