variable "do_token" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

terraform {
	backend "consul" {
		address	= "demo.consul.io"
		path		= "getting-started-lskdsjsldkfj"
		lock		= false
	}
}


