#!/bin/bash
POST_NAME="unnamed.md"

echo -e "---\r\nlayout: post\r\ntitle: \r\ntags: uncategorized\r\ncomments: true\r\n---\r\n" > _drafts/$POST_NAME

code -r -g _drafts/$POST_NAME:8
