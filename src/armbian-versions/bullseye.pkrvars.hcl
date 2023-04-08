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
box_name = "armbian-bullseye-23.02.2-uefi-x86"
box_tag = "cobalt-forge/armbian-bullseye-23.02.2-uefi-x86"
box_version = "0.1.0"
vmware_source = "./armbian-base-vm.vmwarevm/armbian-base-vm.vmx"
shell_scripts = [
  "./src/armbian-versions/bullseye-provision-vagrant.sh"
]

