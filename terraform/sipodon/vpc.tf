resource "digitalocean_vpc" "sipodon" {
  name     = "example-project-network"
  region   = "nyc3"
  ip_range = "10.10.10.0/24"
}