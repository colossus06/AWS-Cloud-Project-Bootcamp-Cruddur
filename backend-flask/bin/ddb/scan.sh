#!/usr/bin/python3
import boto3

attrs = {
  'endpoint_url': 'http://localhost:8000'
}

dynamodb = boto3.resource('dynamodb',**attrs)
table_name = 'cruddur-messages'

table = dynamodb.Table(table_name)
response = table.scan()
items = response['Items']
for item in items:
    print(item)