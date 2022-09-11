source "vmware-vmx" "armbian-jammy-uefi-x86-base" {
  source_path = "/Users/arcaartem/Virtual Machines.localized/armbian-jammy-22.08-uefi-x86.vmwarevm/armbian-jammy-22.08-uefi-x86.vmx"
  ssh_username = "root"
  ssh_password = "vagrant"
  shutdown_command = "poweroff"
}

build {
  sources = ["sources.vmware-vmx.armbian-jammy-uefi-x86-base"]

  post-processors {
    post-processor "vagrant" {
      output               = "armbian-jammy-22.08-uefi-x86_{{.Provider}}.box"
      #vagrantfile_template = "vagrantfile.tpl"
    }

    #post-processor "vagrant-cloud" {
      #access_token = "${var.cloud_token}"
      #box_tag      = "CobaltForge/armbian-jammy-22.08-uefi"
      #version      = "${var.version}"
      #no_release   = "true"
    #}
  }
}
