#! /bin/bash

if [[ -z "${NOW_TOKEN}" ]]; then
  echo "Now token not set, please set the \$NOW_TOKEN ENV variable to valid token."
  exit 1
fi

now --token=$NOW_TOKEN $@
