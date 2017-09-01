#!/bin/bash
CURRENT_DATE=$(date +%Y-%m-%d)
POST_NAME="$CURRENT_DATE-unnamed.md"

echo -e "---\r\nlayout: post\r\ntitle: \r\ntags: uncategorized\r\ncomments: true\r\n---\r\n" > _posts/$POST_NAME

code -n
code -r _posts/$POST_NAME
