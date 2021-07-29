variable "create_rule_group" {
  description = "Whether to create rule group"
  default = true
}

variable "rule_group_name" {
  description = "Name of rule group to be created"
  default = null
}

variable "rule_group_metric_name" {
  description = "Name for metrics of rule group"
  default = null
}

variable "activated_rules" {
  description = "List of activated rules"
  default = []
}

variable "tags" {
  description = "Resource tags for the rule group"
  default = {}
}