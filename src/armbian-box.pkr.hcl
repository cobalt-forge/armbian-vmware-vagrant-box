source "vmware-vmx" "armbian-box" {
  boot_command = var.boot_command
  boot_wait = "1m00s"
  shutdown_command = "poweroff"
  source_path = "${var.vmware_source}"
  ssh_username = "root"
  ssh_password = "vagrant"
}

build {
  sources = ["sources.vmware-vmx.armbian-box"]

  provisioner "shell" {
    scripts = var.shell_scripts
  }

  provisioner "breakpoint" {
    disable = false
  }

  post-processors {
    post-processor "vagrant" {
      output               = "${var.box_name}_{{.Provider}}.box"
    }

    post-processor "vagrant-cloud" {
      access_token = "${var.cloud_token}"
      box_tag      = "${var.box_tag}"
      version      = "${var.box_version}"
      no_release   = "true"
    }
  }
}
