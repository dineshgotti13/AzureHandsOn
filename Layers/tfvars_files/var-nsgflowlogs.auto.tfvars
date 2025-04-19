resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

flow_logs = {
  flowlog1 = {
    nsg_name                 = "[__app_acronym__]-[__region__]-[__env_name__]-[__identifier__]"
    storage_account_name     = "[__app_acronym__][__env_name__]statt03"
    network_watcher_name     = "NetworkWatcher_[__region__]"
    network_watcher_rg_name  = "NetworkWatcherRG"
    retention_days           = "7"
    enable_traffic_analytics = false
    interval_in_minutes      = null # required only while using traffic analytics is enabled
  }
}

loganalytics_workspace_name = "[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"