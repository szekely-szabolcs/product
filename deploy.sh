#!/bin/bash
set -ev

echo 'getting ready to deploy'
ELASTIC_BEANSTALK_LABEL="commit: $(git rev-parse HEAD)"
echo $ELASTIC_BEANSTALK_LABEL
echo $ELASTIC_BEANSTALK_DESCRIPTION
pwd
zip -r deploy_package.zip . -x ".git/*" -x "*/.git/*" -x "vendor/*"
