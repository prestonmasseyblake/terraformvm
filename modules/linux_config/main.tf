resource "null_resource" "configure_linux" {
  connection {
    type        = "ssh"
    host        = "127.0.0.1"
    port        = 2200
    user        = "vagrant"
    private_key = file("${path.root}/.vagrant/machines/default/virtualbox/private_key")
    timeout     = "60s"
  }


  provisioner "file" {
    source      = "${path.module}/../../scripts"
    destination = "/tmp/scripts"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod +x /tmp/scripts/*.sh",
      "/tmp/scripts/setup_users.sh",
      "/tmp/scripts/configure_firewall.sh",
      "/tmp/scripts/harden_sysctl.sh"
    ]
  }
}
