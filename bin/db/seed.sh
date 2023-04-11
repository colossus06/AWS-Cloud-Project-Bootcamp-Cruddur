#! /usr/bin/bash

#echo "== db-seed"
CYAN='\033[1;36m'
NO_COLOR='\033[0m'
LABEL="db-seed"
printf "${CYAN}== ${LABEL}${NO_COLOR}\n"

seed_path="/mnt/c/Users/PC/aws-cruddur/awscruddur/backend-flask/db/seed.sql"

echo $seed_path

if [ "$1" = "prod" ]; then
  echo "Running in production mode"
  URL="postgresql://root:huEE33z2Qvl383@cruddur-db-instance.cih7lwdwwpfd.us-east-1.rds.amazonaws.com:5432/cruddur"
else
  URL="postgresql://postgres:ada@localhost:5432/cruddur"
fi

psql $URL cruddur < $seed_path