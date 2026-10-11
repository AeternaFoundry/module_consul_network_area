variable "network_areas" {
  description = <<EOT
Map of network_areas, attributes below
Required:
    - peer_datacenter
Optional:
    - datacenter
    - retry_join
    - token
    - use_tls
EOT

  type = map(object({
    peer_datacenter = string
    datacenter      = optional(string)
    retry_join      = optional(list(string))
    token           = optional(string)
    use_tls         = optional(bool)
  }))
}

