#!/bin/bash
#
# requires:
#  bash
#  tr, dirname, pwd
#  sed, head
#
set -e

## private functions

function extract_args() {
  CMD_ARGS=
  for arg in $*; do
    case $arg in
      --*=*)
        key=${arg%%=*}; key=$(echo ${key##--} | tr - _)
        value=${arg##--*=}
        eval "${key}=\"${value}\""
        ;;
      *)
        CMD_ARGS="${CMD_ARGS} ${arg}"
        ;;
    esac
  done
  # trim
  CMD_ARGS=${CMD_ARGS%% }
  CMD_ARGS=${CMD_ARGS## }
}

## variables

### prepare

extract_args $*

### read-only variables

readonly abs_path=$(cd $(dirname $0) && pwd)

## main

cmd="$(echo ${CMD_ARGS} | sed "s, ,\n,g" | head -1)"

case "${cmd}" in
*)
  ;;
esac
