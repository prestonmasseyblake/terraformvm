variable "vm_ip" {
  description = "IP address of the VM"
  type        = string
}

variable "users" {
  description = "List of users to create"
  type        = list(string)
  default     = ["adminuser"]
}

variable "ssh_public_keys" {
  description = "Map of username -> SSH public key"
  type        = list(string)
}