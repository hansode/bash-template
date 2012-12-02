#!/bin/bash
#
# requires:
#  bash
#  tr, dirname, pwd
#  sed, head
#
set -e

## private functions

## variables

### read-only variables

readonly abs_dirname=$(cd $(dirname $0) && pwd)

### include files

. ${abs_dirname}/functions.utils

### prepare

extract_args $*

## main

declare cmd="$(echo ${CMD_ARGS} | sed "s, ,\n,g" | head -1)"

case "${cmd}" in
*)
  ;;
esac
