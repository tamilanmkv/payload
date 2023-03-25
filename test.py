import boto3
from botocore.client import Config

ACCESS_KEY_ID = 'AKIASMUA7ZL2WLW7Y73V'
ACCESS_SECRET_KEY = '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'
BUCKET_NAME = 'vidhyaai'
FILE_NAME = '/usr/local/lib/python3.6/dist-packages/openai/'


data = open(FILE_NAME, 'rb')

# S3 Connect
s3 = boto3.resource(
    's3',
    aws_access_key_id=ACCESS_KEY_ID,
    aws_secret_access_key=ACCESS_SECRET_KEY,
    config=Config(signature_version='s3v4')
)

# Image Uploaded
s3.Bucket(BUCKET_NAME).put_object(Key=FILE_NAME, Body=data, ACL='public-read')

print ("Done")
