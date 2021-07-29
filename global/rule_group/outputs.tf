output "rule_group_id" {
  description = "The id for the created rule group."
  value = concat(aws_waf_rule_group.rule_group.*.id, [""],)[0]
}