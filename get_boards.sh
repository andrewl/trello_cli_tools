#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/common.sh

URL="https://api.trello.com/1/members/$MEMBER_ID/boards?$TRELLO_CREDENTIALS"

curl "$URL" | json_pp 
