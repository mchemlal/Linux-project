#! /bin/bash
mkdir -p $2
touch $2/log-test.log
cat $1 >> $2/log-test.log
