resource appInsightsComponents 'Microsoft.Insights/components@2020-02-02' = {
  name: 'mgbcp-ai-001'
  location: resourceGroup().location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}
