#!/bin/bash

RUN_CLIENT='emax -nw -s mtt-edit'
RUN_DAEMON='emax --daemon=mtt-edit'

$RUN_CLIENT "$@" || ($RUN_DAEMON && $RUN_CLIENT "$@")
