resource  Storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'mgbcpstorage001'
  sku:{
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  location: 'uksouth'
  properties:{
    allowBlobPublicAccess:false
    minimumTlsVersion:'TLS1_2'
  }
}
