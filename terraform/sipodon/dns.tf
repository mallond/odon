resource "digitalocean_record" "sipodon" {
  domain = var.domain_name
  type   = "A"
  name   = "@"
  value  = digitalocean_droplet.sipodon.ipv4_address
}