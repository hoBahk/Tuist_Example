#!/bin/bash

NAME=$1
AUTHOR=$(git config user.name)
DATE=$(date +%Y/%m/%d)

tuist scaffold Module --name $NAME --author "$AUTHOR" --date $DATE --path "Projects"
