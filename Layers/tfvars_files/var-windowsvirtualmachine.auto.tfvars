resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

windows_vms = {
  vm1 = {
    name                                 = "[__win_vm_name__]"
    computer_name                        = "[__win_vm_name__]" #hostname has to be in uppercase letters
    vm_size                              = "Standard_B4ms"
    assign_identity                      = true
    availability_set_key                 = null
    vm_nic_keys                          = ["nic1"]
    zone                                 = "1"
    source_image_reference_offer         = null #"WindowsServer"          # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher     = null #"MicrosoftWindowsServer" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku           = null #"2016-Datacenter"        # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version       = null #"latest"                 # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    os_disk_name                         = "[__win_vm_name__]-osdisk"
    storage_os_disk_caching              = "ReadWrite"
    managed_disk_type                    = "Premium_LRS"
    disk_size_gb                         = 128
    write_accelerator_enabled            = null
    recovery_services_vault_name         = null #"[__app_acronym__]-[__region__]-[__env_name__]-rsv-[__identifier__]"
    vm_backup_policy_name                = null #"[__app_acronym__]-[__region__]-[__env_name__]-rsv-policy-[__identifier__]"
    use_existing_disk_encryption_set     = true
    existing_disk_encryption_set_name    = "[__disk_encryption_set_name__]"# null
    existing_disk_encryption_set_rg_name = null
    customer_managed_key_name            = null
    disk_encryption_set_name             = null
    # enable_cmk_disk_encryption           = false # set it to true if you want to enable disk encryption using customer managed key
    # enable_cmk_disk_encryption           = true # set it to true if you want to enable disk encryption using customer managed key
    enable_automatic_updates             = true
    custom_data_path                     = "//drivesetup.ps1"     #"//script_file.ps1" # Optional
    custom_data_args                     = { region = "[__region__]" } #"{ name = "VMandVM", destination = "EASTUS2", version = "1.0" }    
  },
  # vm2 = {
  #   name                                 = "[__win_vm2_name__]"
  #   computer_name                        = "[__win_vm2_name__]" #hostname has to be in uppercase letters
  #   # vm_size                              = "Standard_D8s_v3"
  #   vm_size                              = "Standard_B4ms"
  #   assign_identity                      = true
  #   availability_set_key                 = null
  #   vm_nic_keys                          = ["nic2"]
  #   zone                                 = "1"
  #   source_image_reference_offer         = null #"WindowsServer"          # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
  #   source_image_reference_publisher     = null #"MicrosoftWindowsServer" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
  #   source_image_reference_sku           = null #"2016-Datacenter"        # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
  #   source_image_reference_version       = null #"latest"                 # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
  #   os_disk_name                         = "[__win_vm2_name__]-osdisk"
  #   storage_os_disk_caching              = "ReadWrite"
  #   managed_disk_type                    = "Premium_LRS"
  #   disk_size_gb                         = "128"
  #   write_accelerator_enabled            = null
  #   recovery_services_vault_name         = null #"[__app_acronym__]-[__region__]-[__env_name__]-rsv-[__identifier__]"
  #   vm_backup_policy_name                = null #"[__app_acronym__]-[__region__]-[__env_name__]-rsv-policy-[__identifier__]"
  #   use_existing_disk_encryption_set     = false
  #   existing_disk_encryption_set_name    = null
  #   existing_disk_encryption_set_rg_name = null
  #   customer_managed_key_name            = null
  #   disk_encryption_set_name             = null
  #   enable_cmk_disk_encryption           = true # set it to true if you want to enable disk encryption using customer managed key
  #   enable_automatic_updates             = true
  #   custom_data_path                     = "//drivesetup.ps1"     #"//script_file.ps1" # Optional
  #   custom_data_args                     = { region = "eastus2" } #"{ name = "VMandVM", destination = "EASTUS2", version = "1.0" }
  # }
}

windows_vm_nics = {
  nic1 = {
    name                           = "[__win_vm_name__]-nic"
    subnet_name                    = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
    vnet_name                      = "[__region__]-[__motsId__]-[__env_name__]-vnet-01" #"jstartvmfirst"
    networking_resource_group      = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    lb_backend_pool_names          = ["[__app_acronym__]-[__region__]-[__env_name__]-lb-01-bep-[__identifier__]", "[__app_acronym__]-[__region__]-[__env_name__]-lb-02-bep-[__identifier__]"]
    lb_nat_rule_names              = null
    app_security_group_names       = ["[__app_acronym__]-[__region__]-[__env_name__]-asg-1"]
    # app_gateway_backend_pool_names = ["appgateway-beap"]
    app_gateway_backend_pool_names = null
    internal_dns_name_label        = null
    enable_ip_forwarding           = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking  = null # set it to true if you want to enable accelerated networking
    dns_servers                    = null
    nic_ip_configurations = [
      {
        static_ip = null
        name      = "ip-config-internal"
      }
    ]
  },
  # nic2 = {
  #   name                           = "[__win_vm2_name__]-nic"
  #   subnet_name                    = "[__subnet_peering_name__]"
  #   vnet_name                      = "[__vnet_peering_name__]" #"jstartvmfirst"
  #   networking_resource_group      = "[__networking_resource_group__]"
  #   lb_backend_pool_names          = null
  #   # lb_nat_rule_names              = ["jstartvmlbnatrule"]
  #   lb_nat_rule_names              = null
  #   app_security_group_names       = null
  #   app_gateway_backend_pool_names = null
  #   internal_dns_name_label        = null
  #   enable_ip_forwarding           = null # set it to true if you want to enable IP forwarding on the NIC
  #   enable_accelerated_networking  = null # set it to true if you want to enable accelerated networking
  #   dns_servers                    = null
  #   nic_ip_configurations = [
  #     {
  #       static_ip = null
  #       name      = "ip-config-internal2"
  #     }
  #   ]
  # }
}

administrator_user_name = "demo"
diagnostics_sa_name     = "[__app_acronym__][__env_name__]statt03"
key_vault_name          = null #"[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"


#sql_always_on_variables
add_sql_always_on_roles = false


# !!! Required for additional windows customizations !!!
ado_kv_name = "[__ado_key_vault_name__]"             #name of the ADO keyvault
ado_rg_name = "[__ado_rg_name__]"        #name of the ADO rg name
ado_sa_name =  "[__ado_storage_account_name__]"      #name of the ADO storage account
ado_subscription_id = "[__ado_subscription_id__]"    #set it to null if both app sub and ADO sub are same


# managed_data_disks = {
#   "disk1" = {
#     disk_name                 = "diskwinvm101082021lv20"
#     vm_key                    = "vm1"
#     lun                       = 0
#     storage_account_type      = "Standard_LRS"
#     disk_size                 = "1024"
#     caching                   = "None"
#     write_accelerator_enabled = false
#     create_option             = null
#     os_type                   = null
#     source_resource_id        = null
#   },
#   "disk2" = {
#     disk_name                 = "diskwinvm201082021lv20"
#     vm_key                    = "vm1"
#     lun                       = 1
#     storage_account_type      = "Standard_LRS"
#     disk_size                 = "1024"
#     caching                   = "None"
#     write_accelerator_enabled = false
#     create_option             = null
#     os_type                   = null
#     source_resource_id        = null
#   },
#   # "disk3" = {
#   #   disk_name                 = "diskwinvm301082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 0
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "80"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk4" = {
#   #   disk_name                 = "diskwinvm401082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 1
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "20"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk5" = {
#   #   disk_name                 = "diskwinvm501082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 2
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "30"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk6" = {
#   #   disk_name                 = "diskwinvm601082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 3
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "100"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk7" = {
#   #   disk_name                 = "diskwinvm701082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 4
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "130"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk8" = {
#   #   disk_name                 = "diskwinvm801082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 5
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "10"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk9" = {
#   #   disk_name                 = "diskwinvm901082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 6
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "20"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # },
#   # "disk10" = {
#   #   disk_name                 = "diskwinvm1001082021lv20"
#   #   vm_key                    = "vm2"
#   #   lun                       = 7
#   #   storage_account_type      = "Standard_LRS"
#   #   disk_size                 = "20"
#   #   caching                   = "None"
#   #   write_accelerator_enabled = false
#   #   create_option             = null
#   #   os_type                   = null
#   #   source_resource_id        = null
#   # }
# }

vm_additional_tags = {
  iac            = "Terraform"
  env            = "[__env_name__]"
  automated_by   = ""
  monitor_enable = true
}
