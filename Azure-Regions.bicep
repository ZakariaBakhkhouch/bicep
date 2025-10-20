// Bicep file defining a list of commonly used Azure regions

@description('List of commonly used Azure regions')
var regions = [
  'eastus'
  'eastus2'
  'westus'
  'westus2'
  'centralus'
  'northcentralus'
  'southcentralus'
  'westeurope'
  'northeurope'
  'uksouth'
  'ukwest'
  'francecentral'
  'germanywestcentral'
  'swedencentral'
  'norwayeast'
  'switzerlandnorth'
  'canadacentral'
  'canadaeast'
  'australiaeast'
  'australiasoutheast'
  'southeastasia'
  'eastasia'
  'japaneast'
  'japanwest'
  'koreacentral'
  'brazilsouth'
  'southafricanorth'
]

output availableRegions array = regions

// This Bicep file can be imported into other Bicep files to reference the list of regions.

// Example usage in another Bicep file:
// import 'Azure-Regions.bicep' as azureRegions
// var selectedRegion = azureRegions.regions[0] // Selects 'eastus'
