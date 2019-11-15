#!/bin/bash

# Assit info function

help() {
  echo "-----------------------------------------------------------------------"
  echo ""
  echo "usage: ./eazy.sh [versions | deploy]"
  echo ""
  echo "-versions Update eazy-framework versions"
  echo "-deploy   Deploy eazy-framework to maven respository"
  echo ""
  echo "-----------------------------------------------------------------------"
}

# Begin
./.mvn/logo.sh
case "$1" in
    'versions')
      ./.mvn/versions.sh $2
  ;;
    'deploy')
      ./.mvn/deploy.sh $2
 ;;
  *)
esac