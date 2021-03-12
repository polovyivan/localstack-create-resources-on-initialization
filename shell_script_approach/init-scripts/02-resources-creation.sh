#!bin/bash

echo "-------------------------------------Script-02"

echo "########### Creating SQS ###########"
aws sqs create-queue --endpoint-url=http://localhost:4566 --queue-name=local_queue_my --profile=localstack
aws sqs create-queue --endpoint-url=http://localhost:4566 --queue-name=local_queue_my_1 --profile=localstack

echo "########### Listing SQS ###########"
aws sqs list-queues --endpoint-url=http://localhost:4566 --profile=localstack
