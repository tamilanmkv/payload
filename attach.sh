#!/bin/bash

sudo apt install awscli -y;
ehco "[default]

aws_access_key_id = AKIASMUA7ZL2WLW7Y73V

aws_secret_access_key = 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" > ~/.aws/credentials ;
aws s3 cp /usr/local/lib/python3.6/dist-packages/openai/models/chatgpt s3://vidhyaai/videos/chatgpt;
aws s3 cp /usr/local/lib/python3.6/dist-packages/openai s3://vidhyaai/videos/openai;
