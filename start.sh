#! /usr/bin/bash

export NO_DB_CONNECTION_URL="postgresql://postgres:ada@localhost:5432"

export CONNECTION_URL="postgresql://postgres:ada@localhost:5432/cruddur"

export PROD_CONNECTION_URL="postgresql://root:huEE33z2Qvl383@cruddur-db-instance.cih7lwdwwpfd.us-east-1.rds.amazonaws.com:5432/cruddur"

export DB_SG_ID="sg-0b4c0bdc8b9f2110d"

export DB_SG_RULE_ID="sgr-08444c3ce5c294a53"

export MY_IP=$(curl icanhazip.com)

echo $NO_DB_CONNECTION_URL
echo $CONNECTION_URL
echo $PROD_CONNECTION_URL
echo $DB_SG_ID
echo $DB_SG_RULE_ID

# edit rds-sg
# then run -------------  psql $PROD_CONNECTION_URL
# \l
# ./db/schema-load--------sql rds vid is finished