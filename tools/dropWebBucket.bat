@echo on
set S3_BUCKET=www.happytenant2.ie
set S3_REGION=eu-west-1

echo ### Deleting S3 bucket %S3_BUCKET% !!
echo.

accept

aws s3 rb s3://%S3_BUCKET% --force
