resource "consul_network_area" "network_areas" {
  for_each = var.network_areas

  peer_datacenter = each.value.peer_datacenter
  datacenter      = each.value.datacenter
  retry_join      = each.value.retry_join
  token           = each.value.token
  use_tls         = each.value.use_tls
}

