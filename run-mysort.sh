#!/bin/bash

TEST_REPO_URL="https://github.com/BhavanaPandey1/Testing_PA3"
TEST_REPO_DIR="BhavanaPandey1/Testing_PA3"

if [ ! -d $TEST_REPO_DIR ]
then
    git clone $TEST_REPO_URL
fi

cd $TEST_REPO_DIR
git fetch & git pull
cd ..

bash $TEST_REPO_DIR/my-result-check.sh all
bash $TEST_REPO_DIR/my-result-test.sh all
