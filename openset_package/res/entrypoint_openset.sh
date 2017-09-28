#!/bin/bash
touch /var/log/openset.log
chown syslog:adm /var/log/openset.log

service rsyslog restart

sleep 1s

command_line="./opt/openset/openset"

if [[ ! -z "$OS_HOST" ]]; then
    command_line+=" --hostext ${OS_HOST}"
fi

if [[ ! -z "$OS_PORT" ]]; then
    command_line+=" --portext ${OS_PORT}"
fi

if [[ ! -z "$OS_TEST" ]]; then
    command_line+=" --test"
fi

echo "Command Line: ${command_line}"

${command_line}
