variable "cloud_token" {
  type = string
  sensitive = true
}

variable "box_name" {
  type = string
  default = "armbian-bullseye-23.02.2-uefi-x86"
}

variable "box_tag" {
  type = string
  default = "CobaltForge/armbian-bullseye-23.02.2-uefi-x86"
}

variable "vmware_source" {
  type = string
  default = "/Users/arca.artem/Virtual Machines.localized/armbian-bullseye-23.02.2-uefi-x86.vmwarevm/armbian-bullseye-23.02.2-uefi-x86.vmx"
}

variable "box_version" {
  type = string
  default = "0.1.0"
}
