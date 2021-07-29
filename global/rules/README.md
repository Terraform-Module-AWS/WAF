# AWS Global WAF rules module

Terraform module which creates global AWS WAF rules resources with all (or almost all) features provided by Terraform AWS provider.

These types of resources supported:

* [waf_rule]
* [waf_rate_based_rule]

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
| create_regular_rule | Whether to create regular rule. | `bool` | `false` | no |
| create_regular_rule | Whether to create rate based rule. | `bool` | `false` | no |
| regular_rule_name | Name of the regular rule. | `string` | `null` | yes |
| rate_based_rule_name | Name of the rate based rule. | `string` | `null` | yes |
| regular_rule_metric_name | Name for metrics of the regular rule. | `string` | `null` | yes |
| rate_based_rule_metric_name | Name for metrics of the rate based rule. | `string` | `null` | yes |
| rate_key | Valid value is `IP`. | `string` | `null` | yes |
| rate_limit | The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100. | `number` | `null` | yes |
| rule_predicates | Objects to include in regular rule. | `any` | `null` | no |
| rate_predicates | Objects to include in rate based rule. | `any` | `null` | no |
| regular_rule_tags | Resource tags for the regular rule. | `map` | `{}` | no |
| rate_tags | Resource tags for the rate based rule. | `map` | `{}` | no |
## Outputs

| Name | Description |
|------|-------------|
| regular\_rule\_id | The id for the created regular rule. |
| rate\_based\_rule\_id | The id for the created rate based rule. |
