resource "digitalocean_droplet" "web-1" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "sfo2"
  size   = "s-1vcpu-1gb"
	private_networking = true
	ssh_keys = [ 
		"${var.ssh_fingerprint}"
	]
	connection {
		user = "root"
		type = "ssh"
		private_key = "${file(var.pvt_key)}"
		timeout = "2m"
	}
	provisioner "remote-exec" {
		inline = [
			# install nginx
			"sudo apt-get update",
			"sudo apt-get -y install nginx"
			]
		}
}

