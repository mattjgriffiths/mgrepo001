resource redisCache 'Microsoft.Cache/Redis@2019-07-01' = {
  name: 'mgbcpRedis001'
  location: 'uksouth'
  properties: {
    sku: {
      name: 'Basic'
      family: 'C'
      capacity: 0
    }
  }
}
