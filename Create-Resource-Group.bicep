// Bicep file to create a resource group in Azure.

targetScope = 'subscription'

@description('Name of the Resource Group to create')
@minLength(5)
param resourceGroupName string

@description('Azure region where the Resource Group will be deployed')
param location string = deployment().location

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    environment: 'production'
  }
}

output resourceGroupId string = rg.id
output resourceGroupLocation string = rg.location
output resourceGroupName string = rg.name

// To deploy this Bicep file, use the following Azure CLI command:
// az deployment sub create --location <deployment-location> --template-file Create-Resource-Group.bicep --parameters resourceGroupName='<your-rg-name>' location='<desired-location>'
