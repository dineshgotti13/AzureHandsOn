resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

server_name                              = "jstartvm01082021lv20azsql"
database_names                           = ["azuresqldb01082021lv20"]
administrator_login_name                 = "dbadmin"
sku_name                                 = "GP_Gen5_4"
azuresql_version                         = "12.0"
assign_identity                          = true
max_size_gb                              = 100
elastic_pool_id                          = null
create_mode                              = null
creation_source_database_id              = null
restore_point_in_time                    = null
private_endpoint_connection_enabled      = true
read_write_endpoint_failover_policy_mode = null
auditing_storage_account_name            = null
auditing_retention_in_days               = "14"
cmk_enabled_transparent_data_encryption  = false

enable_failover_server          = false
failover_location               = null
geo_secondary_key_vault_rg_name = null
geo_secondary_key_vault_name    = null

key_vault_name = null #"jstartvmdev01082021lvakv"

allowed_networks = [{
  subnet_name               = "[__region__]-[__app_acronym__]-[__env_name__]-vnet-01-snet-01"
  vnet_name                 = null #"jstartvmfirst"
  networking_resource_group = "[__networking_resource_group__]"
}]

firewall_rules = {
  rule1 = {
    name             = "azuresql-firewall-rule-default"
    start_ip_address = "0.0.0.0"
    end_ip_address   = "0.0.0.0"
  }
}

azuresql_additional_tags = {
  iac          = "Terraform"
  env          = "[__env_name__]"
  automated_by = ""
  pe_enable    = true
}
