@echo off
echo ========================
echo === Sync to AWS / S3 ===
echo ========================
echo.

aws s3 sync ../webroot s3://www.happytenant.net --delete --acl public-read --dryrun

rem  End
pause