resource trafficManagerProfile 'Microsoft.Network/trafficManagerProfiles@2018-08-01' = {
  name: 'mgbcp-tst-tm'
  location: 'global'
  properties: {
    profileStatus: 'Enabled'
    trafficRoutingMethod: 'Priority'
    dnsConfig: {
      relativeName: 'mgbcp-tst-tm'
      ttl: 30
    }
    monitorConfig: {
      protocol: 'HTTPS'
      port: 443
      path: '/'
      intervalInSeconds: 30
      timeoutInSeconds: 10
      toleratedNumberOfFailures: 3
    }
    endpoints: [
      {
        type: 'Microsoft.Network/TrafficManagerProfiles/ExternalEndpoints'
        name: 'endpoint1'
        properties: {
          target: 'uks.mgbcpmgr.com'
          endpointStatus: 'Enabled'
          endpointLocation: 'uksouth'
          priority: 1
        }
      }
      {
        type: 'Microsoft.Network/TrafficManagerProfiles/ExternalEndpoints'
        name: 'endpoint2'
        properties: {
          target: 'ukw.mgbcpmgr.com'
          endpointStatus: 'Enabled'
          endpointLocation: 'ukwest'
          priority: 2
        }
      }
    ]
  }
}
