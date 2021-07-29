variable "create_web_acl" {
    type = bool
    description = "Whether a web acl should be created"
    default = true
}

variable "default_action" {
  description = "value"
  default = null
}

variable "web_acl_name" {
  description = "Name of the web ACL"
  default = null
}

variable "web_acl_metric_name" {
  description = "Name for metrics of web ACL"
  default = null
}

variable "logging_config" {
  description = "Configurations to enable WAF logging"
  default = []
}

variable "rules" {
  description = " Configuration containing rules to associate with the web ACL and the settings for each rule"
  default = []
}

variable "tags" {
  description = "Resource tags for the web ACL"
  default = {}
}


variable "associate_resource" {
  description = "Whether a resource is associated with created web ACL"
  default = false
}

variable "resource_arn" {
  description = "ARN of resource to associate with web ACL"
  default = null
}