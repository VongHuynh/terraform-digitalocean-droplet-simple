# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}
variable "pvt_key" {}

# variable droplet resource
variable "image" {}
variable "name" {}
variable "region" {}
variable "size" {}