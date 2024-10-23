targetScope = 'subscription'

metadata name = 'min test'
metadata description = 'This instance deploys the module with min features enabled.'

// ============== //
// Test Execution //
// ============== //

import * as environment from '../../../main.bicep'

var public = 'AzureCloud'
var china = 'AzureChinaCloud'
var usgov = 'AzureUSGovernment'

output graphEndpointPublic string = environment.getGraphEndpoint(public)
output graphEndpointChina string = environment.getGraphEndpoint(china)
output graphEndpointUsGov string = environment.getGraphEndpoint(usgov)

output portalEndpointPublic string = environment.getPortalUrl(public)
output portalEndpointChina string = environment.getPortalUrl(china)
output portalEndpointUsGov string = environment.getPortalUrl(usgov)
