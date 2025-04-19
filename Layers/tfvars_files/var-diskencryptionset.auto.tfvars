resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

disk_encryption_set = {
  des1 = {
    name                      = "[__disk_encryption_set_name__]" #"[__disk_encryption_set_name__]"
    customer_managed_key_name = "cmkencryptionkey"
  }
}

key_vault_name = null #"[__key_vault_name__]"


