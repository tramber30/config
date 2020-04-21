#!/usr/bin/env bash

echo $LS_COLORS > ls_color_backup
LS_COLORS=$LS_COLORS'ex=32:ow=1;34:'
export $LS_COLORS