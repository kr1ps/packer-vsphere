##################################################################################
# VARIABLES
##################################################################################

# Credentials

vcenter_username                = "administrator@kr1ps.com"
vcenter_password                = "P@ssw0rd"

# vSphere Objects

vcenter_insecure_connection     = true
vcenter_server                  = "vcsa.kr1ps.com"
vcenter_datacenter              = "kr1ps-DC"
vcenter_host                    = "esx-02.kr1ps.com"
vcenter_datastore               = "LocalSSD-esx-02"
vcenter_network                 = "server-net"
vcenter_folder                  = "Templates"

# ISO Objects
iso_path                        = "[datastore1] /ISOs/ubuntu-20.04.3-live-server-amd64.iso"
