Bash scripts to read boards, lists and cards from the Trello API.

Setup
=====

Set the following environment variables, either on the command line, or optionally store them in ~/.trello_cli.secret (an example file is provided in this repo).
TRELLO_CLI_API_KEY
TRELLO_CLI_OAUTH_TOKEN

All output is returned and formatted using json_pp, so you can grep, cut etc the data (see get_cards.sh for an example of this).

Scripts provided by this repo:

Get Boards
==========

get_boards.sh

Retrieves a list of boards for the given member, MEMBER_ID, eg

MEMBER_ID=joe_slow123 ./get_boards.sh

Get Lists
=========

get_lists.sh

Retrieves a list of lists for the given board, BOARD_ID, eg

BOARD_ID=23222bae5ec772 ./get_lists.sh

Get Cards
=========

Retrieves a list of card names for the given list, LIST_ID, eg

LIST_ID=5543422eeffeefcbab ./get_cards.sh

(in order to see full output, run with TRELLO_VERBOSE=1, eg TRELLO_VERBOSE=1 LIST_ID=5543422eeffeefcbab ./get_cards.sh)
