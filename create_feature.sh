#!/bin/bash

NAME=$1
AUTHOR=$(git config user.name)
DATE=$(date +%Y/%m/%d)

tuist scaffold Feature --name $NAME --author "$AUTHOR" --date $DATE --path "Projects/Feature"
tuist scaffold Module --name ${NAME}Domain --author "$AUTHOR" --date $DATE --path "Projects/Domain"
tuist scaffold Module --name ${NAME}Repository --author "$AUTHOR" --date $DATE --path "Projects/Data"
