# AWS Global WAF web ACL module

Terraform module which creates global AWS WAF web acl resources with all (or almost all) features provided by Terraform AWS provider.

These types of resources supported:

* [waf_web_acl]

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
| create_web_acl | Whether to create web ACL. | `bool` | `false` | no |
| default_action | Configuration block with action that you want AWS WAF to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL. | `any` | `null` | yes |
| web_acl_name | Name of the web ACL. | `string` | `null` | yes |
| web_acl_metric_name | Name for metrics of the web ACL. | `string` | `null` | yes |
| logging_config | Configurations to enable WAF logging. | `any` | `null` | no |
| rules | Configuration containing rules to associate with the web ACL and the settings for each rule. | `any` | `null` | no |
| tags | Resource tags for web ACL. | `map` | `{}` | no |
| associate_resource | Whether a resource is associated with created web ACL. | `bool` | `false` | no |
| resource_arn | ARN of resource to associate with web ACL. | `string` | `null` | yes |
## Outputs

| Name | Description |
|------|-------------|
| web\_acl\_id | The id for the created web ACL. |
| web\_acl\_arn | The arn for the created web ACL. |
