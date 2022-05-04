#!/bin/bash

WK_LIST = `gh workflow list | grep example | awk {'print $1'}`
for workflow in WK_LIST; do
    gh workflow run workflow
done
