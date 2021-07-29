# AWS Global WAF group rule module

Terraform module which creates global AWS WAF group rule resources with all (or almost all) features provided by Terraform AWS provider.

These types of resources supported:

* [waf_rule_group]

## Terraform versions

Only Terraform 0.12.6 or newer is supported.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 3.28.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.28.0 |

## Modules

No Modules.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create_rule_group | Whether to create rulegroup. | `bool` | `false` | no |
| rule_group_name | Name of the rule group. | `string` | `null` | yes |
| rule_group_metric_name | Name for metrics of the rule group. | `string` | `null` | yes |
| activated_rules | List of activated rules. | `any` | `null` | no |
| tags | Resource tags for the rule group | `map` | `{}` | no |
## Outputs

| Name | Description |
|------|-------------|
| rule\_group\_id | The id for the created rule group. |
