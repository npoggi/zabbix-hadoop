#!/bin/bash
set -e

if [ $# -eq 0 ]
then
    echo echo "Usage: $0 script <params>. Sent $*. Number $#"
    exit 1
fi

script=$1
dir_name=$(dirname $0)
# Remove the first parameter (the script)
shift ;

nohup $dir_name/$script $*
#2>> /tmp/zabbix_exec.log &
echo "Ok $script"
exit