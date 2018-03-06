max_stale = "1m"

consul {
  address = "consul.service.consul:8500"
}

template {
  source = "/etc/ndocker/alertmanager_start.sh.tpl"
  destination = "/usr/bin/alertmanager_start.sh"
  perms = 0755
}

exec {
  command = "/usr/bin/alertmanager_start.sh"
  splay = "10s"
}
