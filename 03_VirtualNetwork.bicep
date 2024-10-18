resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'mgbcpvNet001'
  location: 'uksouth'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '172.100.150.0/24'
      ]
    }
    subnets: [
      {
        name: 'mgbcpSubnet-1'
        properties: {
          addressPrefix: '172.100.150.0/26'
        }
      }
      {
        name: 'mgbcpSubnet-2'
        properties: {
          addressPrefix: '172.100.150.64/28'
        }
      }
      {
        name: 'mgbcpSubnet-3'
        properties: {
          addressPrefix: '172.100.150.80/28'
        }
      }
    ]
  }
}
