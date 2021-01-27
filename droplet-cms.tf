resource "digitalocean_droplet" "cms" {
	image = var.image

	region = var.region

	name = "test-cms"

	size = var.droplet_size

	ssh_keys = [data.digitalocean_ssh_key.main.id]

	user_data = <<EOF
    #cloud-config
    packages:
        - nginx
    EOF

	private_networking = true

	lifecycle {
		create_before_destroy = true // dont destroy server before the new one is running!
	}
}