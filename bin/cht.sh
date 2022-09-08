#!/bin/bash

languages=`echo "swift javascript rust vim nodejs" | tr " " "\n"`
core_utils=`echo "xargs find sed awk" | tr " " "\n"`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
  curl cht.sh/$selected/`echo $query | tr ' ' '+'`
else 
  curl cht.sh/$selected~$query
fi

