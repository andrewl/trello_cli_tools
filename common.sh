#!/bin/bash

if [ -e ~/.trello_cli.secret ]
then
  . ~/.trello_cli.secret
fi

if [ -z "$TRELLO_CLI_API_KEY" ]; then
  echo "You must define TRELLO_CLI_API_KEY";
  exit 1;
fi

if [ -z "$TRELLO_CLI_OAUTH_TOKEN" ]; then
  echo "You must define TRELLO_OAUTH_TOKEN";
  exit 1;
fi

TRELLO_CREDENTIALS="key=$TRELLO_CLI_API_KEY&token=$TRELLO_CLI_OAUTH_TOKEN"
