subscriptionId = "[__subscriptionID__]"
tenantId       = "[__tenantID__]"

resource_group_name = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"

vm_dashboards = {
  vmdash1 = {
    dashboardName     = "VM-Dashboard"
    resourceGroupName = "[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]"
    resourceName      = "[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
    resourceId        = "/subscriptions/[__subscriptionID__]/resourcegroups/[__app_acronym__]-[__region__]-[__env_name__]-rg-[__identifier__]/providers/microsoft.operationalinsights/workspaces/[__app_acronym__]-[__region__]-[__env_name__]-law-[__identifier__]"
  }
}
