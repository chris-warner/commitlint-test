#!/bin/bash

# Create a commitlint config file
echo "module.exports = {extends: ['@commitlint/config-conventional']};" > commitlint.config.js

# Set up Husky Git hooks
npx husky install
npx husky add .husky/commit-msg "npx --no-install commitlint --edit $1"
