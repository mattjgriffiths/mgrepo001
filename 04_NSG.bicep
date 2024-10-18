resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2019-11-01' = {
  name: 'mgbcpNSG001'
  location: 'uksouth'
  properties: {
    securityRules: [
      {
        name: 'nsgRule1'
        properties: {
          description: 'description'
          protocol: 'Tcp'
          sourcePortRange: '443'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
        }
      }
      {
        name: 'nsgRule2'
        properties: {
          description: 'description'
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 999
          direction: 'Inbound'
        }
      }
    ]
  }
}
