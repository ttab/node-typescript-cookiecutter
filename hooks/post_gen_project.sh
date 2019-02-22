#!/bin/bash

yarn add -D $(cat basic_dev_dependencies.txt)
rm -f basic_dev_dependencies.txt
yarn add -D $(cat basic_dependencies.txt)
rm -f basic_dependencies.txt
git init
gitmoji --init
git add -A
