#!/bin/bash
set -e
echo "Getting AWS S3 buckets..."
aws s3 ls > out/list_of_buckets.txt
echo "Saved to out/list_of_buckets.txt"
