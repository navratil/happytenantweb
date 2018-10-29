@echo off
echo ### Synchronizing to AWS S3
echo.

set S3_BUCKET=www.happytenant.ie

aws s3 sync ../webroot s3://%S3_BUCKET% --delete --acl public-read 
rem --dryrun
