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

- [min test](#example-1-min-test)
- [min test](#example-2-min-test)

### Example 1: _min test_

This instance deploys the module with min features enabled.


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

### Example 2: _min test_

This instance deploys the module waf-aligned.


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
