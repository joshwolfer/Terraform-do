data "template_file" "haproxyconf" {
	template = "${file("${path.module}/config/haproxy.cfg.tpl")}"

	vars = {
		web1_priv_ip = "${digitalocean_droplet.web-1.ipv4_address_private}"
		web2_priv_ip = "${digitalocean_droplet.web-2.ipv4_address_private}"
	}
}

		
