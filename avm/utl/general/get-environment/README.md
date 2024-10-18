# Get Environment `[General/GetEnvironment]`

This module contains helper functions for returing URLs and Endpoints that change depending on the target cloud environment

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

- [Import all](#example-1-import-all)

### Example 1: _Import all_

This instance deploys the module with min features enabled.


<details>

<summary>via Bicep module</summary>

```bicep
import * as environment from 'br/public:avm/utl/general/get-environment:<version>'

var currentEnvironment = 'AzureCloud'

var graphEndpoint = environment.getGraphEndpoint(currentEnvironment)
var portalUrl = environment.getPortalUrl(currentEnvironment)
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
