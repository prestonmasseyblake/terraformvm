provider "local" {

}

module "linux_config" {
  source          = "./modules/linux_config"
  vm_ip           = var.vm_ip
  users           = var.users
  ssh_public_keys = var.ssh_public_keys
}

