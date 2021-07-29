output "rate_based_rule_id" {
  description = "The id for the created rate based rule."
  value = concat(aws_waf_rate_based_rule.rate_based_rule.*.id, [""],)[0]
}

output "regular_rule_id" {
  description = "The id for the created regular rule."
  value = concat(aws_waf_rule.regular_rule.*.id, [""],)[0]
}