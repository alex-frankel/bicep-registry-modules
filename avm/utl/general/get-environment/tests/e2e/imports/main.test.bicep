targetScope = 'subscription'

metadata name = 'Import all'
metadata description = 'This example imports all functions.'

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
