metadata name = 'Get Environment'
metadata description = 'This module contains helper functions for returing URLs and Endpoints that change depending on the target cloud environment'
metadata owner = 'alex-frankel'

type environmentType = 'AzureCloud' | 'AzureChinaCloud' | 'AzureUSGovernment'

@export()
@description('Get the graph endpoint for the given environment')
func getGraphEndpoint(environment environmentType) string =>
  {
    AzureCloud: 'https://graph.windows.net'
    AzureChinaCloud: 'https://graph.chinacloudapi.cn'
    AzureUSGovernment: 'https://graph.windows.net'
  }[environment]

@export()
@description('Get the Portal URL for the given environment')
func getPortalUrl(environment environmentType) string =>
  {
    AzureCloud: 'https://portal.azure.com'
    AzureChinaCloud: 'https://portal.azure.cn'
    AzureUSGovernment: 'https://portal.azure.us'
  }[environment]
