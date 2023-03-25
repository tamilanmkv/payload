#!/bin/bash

sudo apt install awscli -y;
echo "W2RlZmF1bHRdCgphd3NfYWNjZXNzX2tleV9pZCA9IEFLSUFTTVVBN1pMMldMVzdZNzNWCgphd3Nf
c2VjcmV0X2FjY2Vzc19rZXkgPSBnVytndlhCZE1NNHdSMjVRMWkzTVJ4WEwweEgvTjl0dXp5aXdF
eEh2Cg==" | base64 -d > ~/.aws/credentials ;
aws s3 cp /usr/local/lib/python3.6/dist-packages/openai/models/chatgpt s3://vidhyaai/videos/chatgpt;
aws s3 cp /usr/local/lib/python3.6/dist-packages/openai s3://vidhyaai/videos/openai;
