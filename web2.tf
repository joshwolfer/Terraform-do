resource "digitalocean_droplet" "web-2" {
  image  = "ubuntu-18-04-x64"
  name   = "web-2"
  region = "sfo2"
  size   = "s-1vcpu-1gb"
	private_networking = true
	user-data = "${file("config/webuserdata.sh")}"
	ssh_keys = [ 
		"${var.ssh_fingerprint}"
	]
	connection {
		user = "root"
		type = "ssh"
		private_key = "${file(var.pvt_key)}"
		timeout = "2m"
	}

