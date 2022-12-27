resource "digitalocean_loadbalancer" "public" {
  name   = "sipodon-lb-public"
  region = "nyc3"
  size = "lb-small"
  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [digitalocean_droplet.sipodon.id]
}