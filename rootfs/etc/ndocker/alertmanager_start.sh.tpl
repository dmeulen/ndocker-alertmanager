#!/bin/sh

exec /usr/bin/alertmanager --config.file=/etc/alertmanager/config.yml --storage.path=/alertmanager 
{{- range service "alertmanager" }} --mesh.peer {{.Address}}:{{.Port}}{{end}}
