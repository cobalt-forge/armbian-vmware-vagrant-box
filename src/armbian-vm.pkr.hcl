source "vmware-vmx" "armbian-bullseye" {
  boot_command = [
    "vagrant<enter>",
    "vagrant<enter>",
    "<wait5>",
    "1",
    "<wait5>",
    "vagrant<enter>",
    "vagrant<enter>",
    "vagrant<enter>",
    "<wait5>",
    "<enter>",
    "<wait5>",
    "Y",
    "<wait5>",
    "2<enter>",
    "<wait10>"
  ]
  boot_wait = "1m00s"
  shutdown_command = "poweroff"
  source_path = "${var.vmware_source}"
  ssh_username = "root"
  ssh_password = "vagrant"
}

build {
  sources = ["sources.vmware-vmx.armbian-bullseye"]

  # post-processors {
  #   post-processor "vagrant" {
  #     output               = "${var.box_name}_{{.Provider}}.box"
  #     #vagrantfile_template = "vagrantfile.tpl"
  #   }

  #   /* post-processor "vagrant-cloud" { */
  #   /*   access_token = "${var.cloud_token}" */
  #   /*   box_tag      = "${var.box_tag}" */
  #   /*   version      = "${var.box_version}" */
  #   /*   no_release   = "true" */
  #   /* } */
  # }
}
