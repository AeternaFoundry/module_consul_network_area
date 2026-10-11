output "network_areas_id" {
  description = "Map of id values across all network_areas, keyed the same as var.network_areas except keys with no id are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_areas_datacenter" {
  description = "Map of datacenter values across all network_areas, keyed the same as var.network_areas except keys with no datacenter are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "network_areas_peer_datacenter" {
  description = "Map of peer_datacenter values across all network_areas, keyed the same as var.network_areas except keys with no peer_datacenter are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.peer_datacenter if v.peer_datacenter != null && length(v.peer_datacenter) > 0 }
}
output "network_areas_retry_join" {
  description = "Map of retry_join values across all network_areas, keyed the same as var.network_areas except keys with no retry_join are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.retry_join if v.retry_join != null && length(v.retry_join) > 0 }
}
output "network_areas_token" {
  description = "Map of token values across all network_areas, keyed the same as var.network_areas except keys with no token are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "network_areas_use_tls" {
  description = "Map of use_tls values across all network_areas, keyed the same as var.network_areas except keys with no use_tls are omitted"
  value       = { for k, v in consul_network_area.network_areas : k => v.use_tls if v.use_tls != null }
}

