output "rule_group_id" {
  description = "The id of the created rule group"
  value = concat(aws_wafregional_rule_group.rule_group.*.id, [""],)[0]
}