#!/bin/bash
set x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $DIR/common.sh

if [ -z "$LIST_ID" ]; then
  echo "You must define LIST_ID";
  exit 1;
fi

FIELDS="fields=name"

if [ -z "$TRELLO_VERBOSE" ]; then
  FIELDS=""
fi

URL="https://api.trello.com/1/lists/$LIST_ID/cards?$FIELDS&$TRELLO_CREDENTIALS"

if [ -z "$TRELLO_VERBOSE" ]; then
  curl "$URL" | json_pp | grep "name" | cut -f 2 -d ":" | cut -f 2 -d '"'
else
  curl "$URL" | json_pp 
fi
