enable_kv_logs_to_log_analytics = true
enable_kv_logs_to_storage       = true
kv_logs                         = null # List of log categories
kv_metrics                      = null # List of metric categories

enable_aks_logs_to_log_analytics = false
enable_aks_logs_to_storage       = false
aks_logs                         = null # List of log categories
aks_metrics                      = null # List of metric categories

enable_appgw_logs_to_log_analytics = false
enable_appgw_logs_to_storage       = false
appgw_logs                         = null # List of log categories
appgw_metrics                      = null # List of metric categories

enable_cosmosdb_logs_to_log_analytics = false
enable_cosmosdb_logs_to_storage       = false
cosmosdb_logs                         = null # List of log categories
cosmosdb_metrics                      = null # List of metric categories

enable_mysql_logs_to_log_analytics = false
enable_mysql_logs_to_storage       = false
mysql_logs                         = null # List of log categories
mysql_metrics                      = null # List of metric categories

enable_appservice_logs_to_log_analytics = false
enable_appservice_logs_to_storage       = false
appservice_logs                         = null # List of log categories
appservice_metrics                      = null # List of metric categories

enable_azsql_logs_to_log_analytics = false
enable_azsql_logs_to_storage       = false
azsql_logs                         = null # List of log categories
azsql_metrics                      = null # List of metric categories

enable_postgresql_logs_to_log_analytics = false
enable_postgresql_logs_to_storage       = false
postgresql_logs                         = null # List of log categories
postgresql_metrics                      = null # List of metric categories

diagnostics_storage_account_name = "[__app_acronym__][__env_name__]statt03"

# custom_diagnostic_settings = {
#   log1 = {
#     name           = "customkvlog"
#     resource_id    = "/subscriptions/[__subscriptionID__]/resourceGroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/Microsoft.KeyVault/vaults/jstartvmdev101420kv"
#     enabled        = true
#     retention_days = 0
#     logs           = null
#     metrics        = null
#   }
# }
