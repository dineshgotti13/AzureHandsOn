resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]" # RG where you app reside

key_vault_name            = "dj-e2-prod-mgmt-kv02"                 # Do not change this value
key_vault_rg_name         = "misc-eastus2-prod-mgmt-rg"            # Do not change this value
key_vault_subscription_id = "1900060d-c8ef-48d1-9efe-cce24f43c057" # Do not change this value

domain_join_extensions = {
  dj1 = {
    secret_name          = "ITServices-Current" # Do not change this value
    virtual_machine_name = "[__win_vm_name__]"     # Based on the VM to join to domain
  }
}

