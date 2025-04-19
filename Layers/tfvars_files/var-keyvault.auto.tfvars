resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

name                            = "[__app_acronym__]-[__region__]-[__env_name__]-kv-[__identifier__]"
enabled_for_deployment          = null
enabled_for_disk_encryption     = null
enabled_for_template_deployment = null
soft_delete_enabled             = true
purge_protection_enabled        = true
sku_name                        = "standard"
secrets                         = {}
access_policies                 = {}
network_acls                    = null

# The value below is REQUIRED when using MSI rather than SPN. 
# msi_object_id = "273de62b-feb5-40a8-882a-3028a3294e64"
msi_object_id = "fa6a94b2-ea2d-4c0e-9f5d-e1c521ea7a0b"  # ADO Object ID of "13099-eastus2-adoagent-vmss" - get it from Azure Active Directory


kv_additional_tags = {
  pe_enable    = true
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
}
