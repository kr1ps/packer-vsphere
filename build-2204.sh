#!/bin/bash
# variable files ending with .auto.pkrvars.hcl are automatically loaded
PACKER_LOG=1 PACKER_LOG_PATH=packer.log packer build -var-file="ubuntu-2204.pkrvars.hcl" \
  -var='os_iso_checksum=10f19c5b2b8d6db711582e0e27f5116296c34fe4b313ba45f9b201a5007056cb' \
  -var='os_iso_url=https://releases.ubuntu.com/22.04.1/ubuntu-22.04.1-live-server-amd64.iso?_ga=2.256884363.1870163767.1660853705-1806220559.1660331826' \
  -var='vsphere_guest_os_type=ubuntu64Guest' \
  -var='vsphere_vm_name=tpl-ubuntu-2204' .
