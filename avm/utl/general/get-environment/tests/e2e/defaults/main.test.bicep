targetScope = 'subscription'

metadata name = 'Using only defaults'
metadata description = 'This instance deploys the module with the minimum set of required parameters.'

import * as utils from '../../../main.bicep'

// ============== //
// Test Execution //
// ============== //

param cloud 'AzureChinaCloud' | 'AzureCloud' | 'AzureUSGovernment'

output envValue string = utils.getGraphEndpoint(cloud)
