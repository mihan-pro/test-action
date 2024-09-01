#!/usr/bin/env bash
set -e

npm install
echo We are going to build app
npm run build

echo We are going to run tests.
ls -l
npm run test