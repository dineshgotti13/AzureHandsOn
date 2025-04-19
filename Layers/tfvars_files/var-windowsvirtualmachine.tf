locals {
  windows_image_ids = {
    # "[__win_vm_name__]" = "/subscriptions/541dad25-6691-4298-863d-fac87a98d478/resourceGroups/13099-eastus2-devops-rg/providers/Microsoft.Compute/galleries/13099eastus2devopssig/images/elvis_server/versions/0.0.20210318"
    # "[__win_vm_name__]" = "/subscriptions/b1af8825-0fde-44a1-9ebf-63d5bd0410e4/resourceGroups/att-golden-images/providers/Microsoft.Compute/galleries/ATT_Shared_Images/images/WindowsServer-2019/versions/0.0.20210209"
    "[__win_vm_name__]" = "/subscriptions/b1af8825-0fde-44a1-9ebf-63d5bd0410e4/resourceGroups/att-golden-images/providers/Microsoft.Compute/galleries/ATT_Shared_Images/images/WindowsServer-2019/versions/0.0.20210317"
    # "[__win_vm2_name__]" = "/subscriptions/b1af8825-0fde-44a1-9ebf-63d5bd0410e4/resourceGroups/att-golden-images/providers/Microsoft.Compute/galleries/ATT_Shared_Images/images/WindowsServer-2019/versions/0.0.20210317"
  }
}
