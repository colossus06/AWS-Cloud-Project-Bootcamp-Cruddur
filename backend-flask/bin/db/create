#! /usr/bin/bash

#echo "== db-create"
CYAN='\033[1;36m'
NO_COLOR='\033[0m'
LABEL="db-create"
printf "${CYAN}== ${LABEL}${NO_COLOR}\n"

# NO_DB_CONNECTION_URL=$(sed 's/\/cruddur//g' <<<"$CONNECTION_URL")
psql "postgresql://postgres:ada@localhost:5432" -c "CREATE database cruddur;"