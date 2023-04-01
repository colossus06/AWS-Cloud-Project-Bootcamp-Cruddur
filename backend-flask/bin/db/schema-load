#! /usr/bin/bash

#echo "== db-schema-load"
CYAN='\033[1;36m'
NO_COLOR='\033[0m'
LABEL="db-schema-load"
printf "${CYAN}== ${LABEL}${NO_COLOR}\n"

# schema_path="$(realpath .)/db/schema.sql"
schema_path="/mnt/c/Users/PC/aws-cruddur/awscruddur/backend-flask/db/schema.sql"
echo $schema_path

echo $file_path

if [ "$1" = "prod" ]; then
  echo "Running in production mode"
  URL="postgresql://root:huEE33z2Qvl383@cruddur-db-instance.cih7lwdwwpfd.us-east-1.rds.amazonaws.com:5432/cruddur"
else
  URL="postgresql://postgres:ada@localhost:5432/cruddur"
fi

psql $URL cruddur < $schema_path