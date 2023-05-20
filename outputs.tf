output "ip_address" {
  value = digitalocean_droplet.learn-terraform-droplet.ipv4_address
  description = "The public IP address of your droplet application."
}