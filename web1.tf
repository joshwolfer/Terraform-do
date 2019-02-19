resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "sfo1"
  size   = "s-1vcpu-1gb"
	private_networking = true
	ssh_key = [ 
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
			"export PATH=$PATH:/usr/bin",
			# install nginx
			"sudo apt-get update",
			"sudo apt-get -y install nginx"
			]
		}
}

