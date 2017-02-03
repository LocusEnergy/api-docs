#!/bin/bash
set -ex

PROJECT=$1
BRANCH=$2
ACTION=$3

DEPLOY="deploy"
TEARDOWN="teardown"
BUILD_DIRECTORY="build"
DELIMITER="-"
BUCKET_SUFFIX=".datareadings.com"
BUCKET_MAX_CHARACTERS=63

# strip out characters unsafe for URLs
url_safe() {
    echo $1 | tr '[_/]' '-' | tr '[:upper:]' '[:lower:]'
}

# create the bucket name based on the branch name.
# here, we replace all '_' and '/'s in the branch name with '-'.
# we also make sure the bucket name is within the limit of max characters
PROJECT=$(url_safe $PROJECT)
CHARACTERS_REMAINING=`expr $BUCKET_MAX_CHARACTERS - ${#PROJECT} - ${#DELIMITER} - ${#BUCKET_SUFFIX}`
BRANCH=$(url_safe $BRANCH)
BRANCH=${BRANCH:0:CHARACTERS_REMAINING}
BUCKET=$PROJECT$DELIMITER$BRANCH$BUCKET_SUFFIX

if [ $ACTION = $DEPLOY ]; then
    bundle exec middleman build
    aws s3 mb s3://$BUCKET/
    aws s3 website s3://$BUCKET/ --index-document index.html --error-document index.html
    aws s3 sync --acl public-read $BUILD_DIRECTORY s3://$BUCKET/
    echo $BUCKET
elif [ $ACTION = $TEARDOWN ]; then
    aws s3 rb s3://$BUCKET/ --force
else
    echo "Invalid action. Only valid actions are $DEPLOY and $TEARDOWN."
    exit 1
fi