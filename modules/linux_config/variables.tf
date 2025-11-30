variable "vm_ip" {
  description = "The IP address of the VM"
  type        = string
}

variable "users" {
  description = "List of system users to create"
  type        = list(string)
}

variable "ssh_public_keys" {
  description = "List of SSH public keys to inject"
  type        = list(string)
}