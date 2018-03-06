#!/bin/sh

consul-template -config /etc/ndocker/alertmanager.hcl
alertmanager_pid=$!

trap "kill $alertmanager_pid" INT TERM
wait $alertmanager_pid
