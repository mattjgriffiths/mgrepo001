resource KeyVault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: 'mgbcpkeyvault001'
  location: 'uksouth'
  properties: {
    enabledForDeployment: true
    enabledForTemplateDeployment: true
    enabledForDiskEncryption: true
    tenantId: 'a889ba03-b774-4975-a2b0-77f2373c8c61'
    accessPolicies: [
      {
        tenantId: 'a889ba03-b774-4975-a2b0-77f2373c8c61'
        objectId: '1944ac29-5f1b-4706-abe7-13b84149ae43'
        permissions: {
          keys: [
            'get'
          ]
          secrets: [
            'list'
            'get'
            'set'
          ]
        }
      }
    ]
    sku: {
      name: 'standard'
      family: 'A'
    }
  }
}

resource KeyVaultSecret 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
  parent:KeyVault
  name: 'mgbcpsecret001'
  properties: {
    value: 'mgbcpvalue001'
    contentType: 'string'
    attributes: {
      enabled: true
    }
  }
}

resource KeyVaultSecret2 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
  parent:KeyVault
  name: 'mgbcpsecret002'
  properties: {
    value: 'mgbcpvalue002'
    contentType: 'string'
    attributes: {
      enabled: true
    }
  }
}

resource KeyVaultSecret3 'Microsoft.KeyVault/vaults/secrets@2023-07-01' = {
  parent:KeyVault
  name: 'mgbcpsecret003'
  properties: {
    value: 'mgbcpvalue003'
    contentType: 'string'
    attributes: {
      enabled: true
    }
  }
}
