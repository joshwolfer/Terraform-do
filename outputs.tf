output "HA_Proxy_IP" {
	value = "${digitalocean_droplet.haproxy-web.ipv4_address}"
}

output "Web-1_IP" {
	value = "${digitalocean_droplet.web-1.ipv4_address}"
}

output "Web-2_IP" {
	value = "${digitalocean_droplet.web-2.ipv4_address}"
}

