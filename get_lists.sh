#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/common.sh


if [ -z "$BOARD_ID" ]; then
  echo "You must define BOARD_ID";
  exit 1;
fi

URL="https://api.trello.com/1/boards/$BOARD_ID/lists?$TRELLO_CREDENTIALS"

curl "$URL" | json_pp 
