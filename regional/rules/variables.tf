variable "create_rate_based_rule" {
  description = "Whether to create rate based rule"
  default = false
}

variable "create_regular_rule" {
  description = "Whether to create regular rule"
  default = false
}

variable "rate_based_rule_name" {
  description = "Name of the rate based rule"
  default = null
}

variable "rate_based_rule_metric_name" {
  description = "Name for metrics of rate based rule"
  default = null
}

variable "rate_key" {
  description = "Valid value is 'IP'"
  default = "IP"
}

variable "rate_limit" {
  description = "The maximum number of requests, which have an identical value in the field specified by the RateKey, allowed in a five-minute period. Minimum value is 100"
  default = 100
}

variable "rate_predicates" {
  default = null 
}

variable "rate_tags" {
  description = "Resource tags for the rate based rule"
  default = {}
}

variable "regular_rule_name" {
  description = "Name of the regular rule"
  default = null
}

variable "regular_rule_metric_name" {
  description = "Name for metrics of regular rule"
  default = null
}

variable "regular_rule_predicates" {
  default = null 
}

variable "regular_rule_tags" {
  description = "Resource tags for the regular rule"
  default = {}
}