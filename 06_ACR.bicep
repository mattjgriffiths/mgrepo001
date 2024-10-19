resource containerRegistry 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: 'mgbcpACR001'
  location: 'uksouth'
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: true
  }
}
