@echo on
set S3_BUCKET=www.happytenant2.ie
set S3_REGION=eu-west-1

echo ### Creating S3 bucket %S3_BUCKET% and configuring for a website 
echo.

aws s3api create-bucket --bucket %S3_BUCKET% --region %S3_REGION% --create-bucket-configuration LocationConstraint=%S3_REGION%

aws s3api put-bucket-website --bucket %S3_BUCKET% --website-configuration file://bucket-website.json
