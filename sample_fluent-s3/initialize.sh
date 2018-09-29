#!/usr/bin/env bash

aws --endpoint-url=http://localhost:4576 sqs create-queue --queue-name my-queue
aws --endpoint-url=http://localhost:4572 s3 mb s3://my-bucket
aws --endpoint-url=http://localhost:4572 s3api put-bucket-notification-configuration --bucket my-bucket --notification-configuration file://notification.json
