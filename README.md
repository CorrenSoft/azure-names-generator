# azure-names-generator
Terraform module to generate standardized Azure resource names based on user-defined parameters

## 🔖 Tagging and Releases
This repository uses semantic versioning (vMAJOR.MINOR.PATCH) for official releases published to the Terraform Registry.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name                                                                | Description                                             | Type     | Default | Required |
| ------------------------------------------------------------------- | ------------------------------------------------------- | -------- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the Environment used to generate the names. | `string` | n/a     |   yes    |
| <a name="input_location"></a> [location](#input\_location)          | Location used to generate the names.                    | `string` | n/a     |   yes    |

## Outputs

| Name                                                                  | Description                          |
| --------------------------------------------------------------------- | ------------------------------------ |
| <a name="output_environment"></a> [environment](#output\_environment) | Environment value received as input. |
| <a name="output_location"></a> [location](#output\_location)          | Location value received as input.    |
<!-- END_TF_DOCS -->

## How to use this module
Below is an example of how to invoke the module from a deployment file. You must specify values for product_area, environment, location, and generator map.  
Under generator, you define a domain and the resource types for which names should be generated, along with the quantity of each. 

### What is a "domain"?
In the context of this module, a domain represents a logical grouping of related resources that belong to the same application, workload, or functional unit. It acts as a unique identifier for a set of resources that should share a consistent naming pattern.
For example, when deploying an Azure Function, the associated resources—such as the Function App, App Service Plan, Storage Account, Private Endpoints, and others—should all use the same domain name to ensure naming consistency and traceability.

> ⚠️ Domain names must be unique within the relevant scope. Reusing the same domain across multiple deployments may result in duplicate names if also shares values for the others parameters.

The domain value is freeform and accepts any alphanumeric string, as long as it complies with Azure's naming rules for the specific resource type.
The domain input is currently freeform and accepts any alphanumeric value that complies with Azure's naming restrictions for the specified resource type. For reference, see [Azure naming rules](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules).  
Do mind on the length of the domain, as it will impact the total length of the generated names.

``` HCL
module "names_generator" {
  source       = "<MODULE_PATH>"
  product_area = "xyz"
  environment  = "staging"
  location     = "westeurope"
  generator = {
    domain = {
      resource_group  = 1
      virtual_machine = 5
      virtual_network = 2
    }
  }
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = module.naming.generated_names.domain.resource_group[0]
  location = module.naming.location
  tags     = {}
}

```