aws cloudformation validate-template --template-body file://s3-website.cf.json

aws cloudformation create-stack --stack-name craig20180402 --template-body file://s3-website.cf.json