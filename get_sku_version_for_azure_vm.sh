#!/bin/bash

# Login to Azure
az login

# Define variables
resource_group="rmg-ops"
vm_name="dg-azure"

# Get the SKU and version details of the VM
az vm show \
  --resource-group $resource_group \
  --name $vm_name \
  --query '[storageProfile.imageReference.sku, storageProfile.imageReference.version]' \
  --output tsv
