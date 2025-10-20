// Bicep file to create a Storage Account in the same location as the resource group.

@description('Get the list of available locations for the subscription')
resource subscriptionLocations 'Microsoft.Resources/subscriptions/locations@2020-01-01' existing = {
  name: subscription().subscriptionId
}



var rgLocation = resourceGroup().location
var prefix = 'prod'
var storageAccountName = 'mysacctbicep${prefix}'

resource storageAccount923 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: rgLocation   // Use the location of the resource group
  sku: {
    name: 'Standard_LRS' // Standard Locally Redundant Storage
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
