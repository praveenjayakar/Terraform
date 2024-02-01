resource "linode_instance" "linode" {
  label     = var.instance_label
  region    = var.instance_region
  type      = var.instance_type
  image     = var.instance_image                                                                                           root_pass = var.instance_root_pass

  connection {                                                                                                               type     = "ssh"                                                                                                         user     = var.ssh_user
    password = var.instance_root_pass
    host     = linode_instance.linode.ip_address
  }

  provisioner "file" {
    source      = var.provisioning_script
    destination = "/tmp/${var.provisioning_script}"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/${var.provisioning_script}",
      "/tmp/${var.provisioning_script}",
    ]
  }
}

output "public_ip" {
  value = linode_instance.linode.ip_address
}
