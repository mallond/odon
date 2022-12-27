data "digitalocean_ssh_key" "ssh_key" {
  name = "terraform"
}

resource "digitalocean_droplet" "sipodon" {
  image  = "ubuntu-20-04-x64"
  name   = "sipodon"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.ssh_key.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.private_key)
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      # Install Apache
      "apt update",
      "apt -y install apache2"
    ]
  }
}