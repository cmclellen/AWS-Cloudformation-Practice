@echo off
setlocal

set FILEPATH=file://wait-condition.cf.json
set STACK_NAME=craig1234

call aws cloudformation validate-template --template-body %FILEPATH%
if %errorlevel% neq 0 goto error

call aws cloudformation create-stack --capabilities CAPABILITY_IAM --stack-name %STACK_NAME% --template-body %FILEPATH%
if %errorlevel% neq 0 goto error

echo.
echo ! Successfully deployed
goto eof

:error
echo.
echo ! Error occurred

:eof
