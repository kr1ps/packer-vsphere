# packer-vsphere
automate deploy vm on vsphere without human interaction using packer and ansible


## Running packer build with hcl

```sh
packer build -force -on-error=ask -var-file variables.pkrvars100GBdisk.hcl -var-file vsphere.pkrvars.hcl ubuntu-20.04.pkr.hcl
```
## Troubleshooting
- If packer gets stuck on `Waiting for IP` you may want to check your DHCP server. I'm using a home router and it had too many leases from running packer many times. I had to flush inactive DHCP clients, or reboot the router which is faster.

## Credits
https://efkan-isazade.com/p/automating-ubuntu-20.04-live-server-template-generation-with-packer-vsphere-iso-build./).