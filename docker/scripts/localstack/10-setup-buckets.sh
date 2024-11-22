#!/bin/bash
echo Setting up Portal Buckets

#source /etc/localstack/conf.d/local-defaults.env

aws --endpoint-url=$LOCALSTACK_URL s3 --region $AWS_REGION mb s3://cdp-example-node-frontend
