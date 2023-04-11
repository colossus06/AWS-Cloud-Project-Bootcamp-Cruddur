#!/usr/bin/bash

CYAN='\033[1;36m'
NO_COLOR='\033[0m'
LABEL="db-drop"
printf "${CYAN}== ${LABEL}${NO_COLOR}\n"

psql postgresql://postgres:ada@localhost:5432 -c "drop database if exists cruddur;"