#!/usr/bin/env bash

export MAIN_WORKSPACE=/Users/diman/sandbox/
export ART_WORKSPACE=${MAIN_WORKSPACE}artifactry-docker/

if [ -z "$1" ]
    then
        echo "At least one argument is required: jenkins/teamcity"
        exit 1
fi

if [ "jenkins" = $1 ]
    then
        export WORKSPACE=${MAIN_WORKSPACE}jenkins-docker/
        export JENKINS_SECRET=2c7b5717aa5d677c0a118bf3f557e7b2ec0c92f6cb09765aaa755c50fffc0594
fi

if [ "teamcity" = $1 ]
    then
        export WORKSPACE=${MAIN_WORKSPACE}teamcity-docker/
fi

echo "running docker-compose -f $1-compose.yml up"
docker-compose -f $1-compose.yml up