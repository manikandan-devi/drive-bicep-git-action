param storage_name_test string = 'st${uniqueString(resourceGroup().name)}'
param location string  = resourceGroup().location
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storage_name_test
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
