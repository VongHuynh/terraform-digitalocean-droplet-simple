resource "digitalocean_droplet" "learn-terraform-droplet" {
  image     = var.image
  name      = var.name
  region    = var.region
  size      = var.size
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]

  connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
  }
  
  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt update",
      "sudo apt install -y nginx",
      "nginx -t",
      "systemctl restart nginx",
    ]
  }
}