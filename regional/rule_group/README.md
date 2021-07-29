# AWS Regional WAF rule group module

Terraform module which creates regional AWS WAF rule group resources with all (or almost all) features provided by Terraform AWS provider.

These types of resources supported:

* [aws_wafregional_rule_group]

## Terraform versions

Only Terraform 0.12.6 or newer is supported.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 2.42 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.42 |

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
