variable "cloud_token" {
  type = string
  sensitive = true
}

variable "boot_command" {
  type = list(string)
}

variable "box_name" {
  type = string
}

variable "box_tag" {
  type = string
}

variable "box_version" {
  type = string
}

variable "shell_scripts" {
  type = list(string)
}

variable "vmware_source" {
  type = string
}

