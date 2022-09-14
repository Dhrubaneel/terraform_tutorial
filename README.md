# Terraform Tutorial

This repo contains code to create a basic Terraform stack which can be used to create resources in AWS.

## User Story

The user story is same as described in [Cloudformation Tutorial](https://github.com/Dhrubaneel/cloudformation_tutorial). We are creating a News_Board to show all news data in one place.

## Technical Architecture

The architecture will be little different then [Cloudformation Tutorial](https://github.com/Dhrubaneel/cloudformation_tutorial). We will be using sns and sqs combination to achieve the effect of Kinesis data stream. There will be one Aws Api Gateway which can be called from Postman to pass data. API Gateway will put the data in SNS topic. A SQS is subscribed to the topic which gets the notification when data is available. A Lambda is attached to SQS that pulls the data from it and store that in a S3 bucket.

The AWS resources used are 
1. api gateway
2. SNS
3. SQS
4. Lambda
5. S3

**Note**: This repo only creates S3 and not the full implementation as this is only for giving a basic idea about how things work

## Vital Commands

### Validate Configuration
`terraform validate`

### Create Change Plan
`terraform plan`

### Apply Changes
`terraform apply`

### Delete Resources
`terraform destroy`