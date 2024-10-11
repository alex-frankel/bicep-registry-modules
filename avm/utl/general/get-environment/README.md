#  `[General/GetEnvironment]`


## Navigation

- [Resource Types](#Resource-Types)
- [Usage examples](#Usage-examples)
- [Parameters](#Parameters)
- [Exported functions](#Exported-functions)
- [Outputs](#Outputs)

## Resource Types

_None_

## Usage examples

The following section provides usage examples for the module, which were used to validate and deploy the module successfully. For a full reference, please review the module's test folder in its repository.

>**Note**: Each example lists all the required parameters first, followed by the rest - each in alphabetical order.

>**Note**: To reference the module, please use the following syntax `br/public:avm/utl/general/get-environment:<version>`.

- [Defaults](#example-1-defaults)
- [Waf-Aligned](#example-2-waf-aligned)

### Example 1: _Defaults_

<details>

<summary>via Bicep module</summary>

```bicep
targetScope = 'subscription'

// ========== //
// Parameters //
// ========== //

@description('Optional. The name of the resource group to deploy for testing purposes.')
@maxLength(90)
// e.g., for a module 'network/private-endpoint' you could use 'dep-dev-network.privateendpoints-${serviceShort}-rg'
param resourceGroupName string = 'dep-${namePrefix}-<provider>-<resourceType>-${serviceShort}-rg'

@description('Optional. The location to deploy resources to.')
param resourceLocation string = deployment().location

@description('Optional. A short identifier for the kind of deployment. Should be kept short to not run into resource-name length-constraints.')
// e.g., for a module 'network/private-endpoint' you could use 'npe' as a prefix and then 'waf' as a suffix for the waf-aligned test
param serviceShort string = 'ggedef'

@description('Optional. A token to inject into the name of each resource. This value can be automatically injected by the CI.')
param namePrefix string = '#_namePrefix_#'

// ============ //
// Dependencies //
// ============ //

// General resources
// =================
resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: resourceLocation
}

// ============== //
// Test Execution //
// ============== //

// @batchSize(1)
// module testDeployment '../../../main.bicep' = [
//   for iteration in ['init', 'idem']: {
//     scope: resourceGroup
//     name: '${uniqueString(deployment().name, resourceLocation)}-test-${serviceShort}-${iteration}'
//     params: {
//       // You parameters go here
//       // name: '${namePrefix}${serviceShort}001'
//       // location: resourceLocation
//     }
//   }
// ]

import * as environment from '../../../main.bicep'

var cloud = 'AzureCloud'

// assert myAssert = environment.getGraphEndpoint(cloud) == 'https://graph.windows.net'
output thingFromEnvironment string = environment.getGraphEndpoint(cloud)
```

</details>
<p>

### Example 2: _Waf-Aligned_

<details>

<summary>via Bicep module</summary>

```bicep
module getEnvironment 'br/public:avm/utl/general/get-environment:<version>' = {
  name: 'getEnvironmentDeployment'
  params: {

  }
}
```

</details>
<p>

<details>

<summary>via JSON parameters file</summary>

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {}
}
```

</details>
<p>

<details>

<summary>via Bicep parameters file</summary>

```bicep-params
using 'br/public:avm/utl/general/get-environment:<version>'


```

</details>
<p>

## Parameters

_None_

## Exported functions

| Function | Description |
| :-- | :-- |
| `getGraphEndpoint` | Get the graph endpoint for the given environment |
| `getPortalUrl` | Get the Portal URL for the given environment |

## Outputs

_None_
