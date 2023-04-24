# Log in to your Azure account using the Azure CLI:
az login

# Set the subscription where you want to create the Private DNS Zone:
# sql
az account set --subscription 3b6ff759-299c-4a48-bef8-d1e612b57658

# Create a resource group for the Private DNS Zone:
# sql
az group create --name az-cli-rg --location centralus

# Note: Replace <resource_group_name> and <location> with the desired values for your resource group.

# Create the Private DNS Zone:
# lua
az network private-dns zone create \
    --resource-group az-cli-rg \
    --name az-cli-zone

# Note: Replace <resource_group_name>, <zone_name>, and <tags> with the desired values for your Private DNS Zone.

# Add virtual network links to the Private DNS Zone:
# lua
az network private-dns link vnet create \
    --resource-group az-cli-rg \
    --zone-name az-cli-zone \
    --name dgaharwar.com \
    --virtual-network az-cli-vnet \
    --registration-enabled true

# Note: Replace <resource_group_name>, <zone_name>, <link_name>, <vnet_name>, and <tags> with the desired values for your virtual network links.
