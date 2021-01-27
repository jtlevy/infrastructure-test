variable "do_token" {}

variable "ssh_key" {
	type = string
	default = "dokey"
}

variable "region" {
	type = string
	default = "sfo3"
}

# CMS
variable "image" {
	type = string
	default = "ubuntu-20-10-x64"
}
variable "droplet_size" {
	type = string
	default = "s-1vcpu-1gb"
}