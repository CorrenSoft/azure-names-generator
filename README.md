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

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the Environment used to generate the names. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Location used to generate the names. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_environment"></a> [environment](#output\_environment) | Environment value received as input. |
| <a name="output_location"></a> [location](#output\_location) | Location value received as input. |
<!-- END_TF_DOCS -->
