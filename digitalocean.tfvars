# token DiggitalOcean
do_token = "<your_DigitalOcean_token>"
# Terraform have workspaces, so we wiil to create many resources for each of workspace. it such as a environment variable
# For example, bellow is a variable to create a Droplet for dev environment
image = "ubuntu-18-04-x64"
name = "learn-terraform-droplet"
region = "nyc1"
size = "s-1vcpu-1gb"