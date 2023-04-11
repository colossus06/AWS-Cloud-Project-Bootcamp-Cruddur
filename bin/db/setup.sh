#! /usr/bin/bash
set -e # stop if it fails at any point

CYAN='\033[1;36m'
NO_COLOR='\033[0m'
LABEL="db-setup"
printf "${CYAN}==== ${LABEL}${NO_COLOR}\n"

bin_path="$(realpath .)"

source "$bin_path/bin/db/drop.sh"
source "$bin_path/bin/db/create.sh"
source "$bin_path/bin/db/schema-load.sh"
source "$bin_path/bin/db/seed.sh"
source "$bin_path/bin/db/update_cognito_user_ids.sh"