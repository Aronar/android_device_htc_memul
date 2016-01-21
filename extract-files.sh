#!/bin/bash

set -e

export DEVICE=memul
export VENDOR=htc

./../memul-common/extract-files.sh $@
