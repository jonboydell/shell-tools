#!/bin/bash
BUCKET_NAME=${1]
s3 cp . s3://${BUCKET_NAME} --recursive
