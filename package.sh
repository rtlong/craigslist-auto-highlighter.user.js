#!/usr/bin/env bash

coffee -c auto_highlighter.coffee

cat header.js findAndReplaceDOMText/src/findAndReplaceDOMText.js > auto_highlighter.user.js
echo -e "\n\n" >> auto_highlighter.user.js
cat auto_highlighter.js >> auto_highlighter.user.js
echo 'wrote to auto_highlighter.user.js'
