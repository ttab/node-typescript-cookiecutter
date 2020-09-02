#!/bin/bash

npm install -D $(cat basic_dev_dependencies.txt)
rm -f basic_dev_dependencies.txt
npm install $(cat basic_dependencies.txt)
rm -f basic_dependencies.txt
git init
gitmoji --init
git add -A
