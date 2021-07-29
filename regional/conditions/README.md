# AWS Regional WAF conditions module

Terraform module which creates regional AWS WAF condition resources with all (or almost all) features provided by Terraform AWS provider.

These types of resources supported:

* [aws_wafregional_byte_match_set]
* [aws_wafregional_geo_match_set]
* [aws_wafregional_ipset]
* [aws_wafregional_regex_match_set]
* [aws_wafregional_size_constraint_set]
* [aws_wafregional_sql_injection_match_set]
* [aws_wafregional_xss_match_set]

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
| create_<CONDITION_TYPE>_set | Whether to create <CONDITION_TYPE> set condition. | `bool` | `false` | no |
| <CONDITION_TYPE>_name | Name of the <CONDITION_TYPE> set. | `string` | `null` | yes |
| byte_match_tuples | Specifies the bytes (typically a string that corresponds with ASCII characters) that you want to search for in web requests, the location in requests that you want to search, and other settings. | `list` | `[]` | no |
| geo_match_constraints | The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for. | `list` | `[]` | no |
| ip_set_descriptors | One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate. | `list` | `[]` | no |
| regex_pattern_set_name | Name for the regex pattern set. | `list` | `[]` | no |
| regex_pattern_strings | Pattern string for the regex. | `list` | `[]` | no |
| regex_match_tuples | The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings. | `list` | `[]` | no |
| size_constraints | Specifies the parts of web requests that you want to inspect the size of. | `list` | `[]` | no |
| sql_injection_match_tuples | The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. | `list` | `[]` | no |
| xss_match_tuples | The parts of web requests that you want to inspect for cross-site scripting attacks. | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| byte\_match\_set\_id | The id for the byte match condition. |
| ipset\_id | The id of the ipset condition. |
| geo\_match\_set\_id | The id for the geo match condition. |
| regex\_match\_set\_id | The id for the created regex match condition. |
| size\_constraint\_set\_id | The id for the created size constraint size. |. |
| sql\_injection\_match\_set\_id | The id for the sql injection match set. |
| xss\_match\_set\_id | The id for the xss injection match set. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
