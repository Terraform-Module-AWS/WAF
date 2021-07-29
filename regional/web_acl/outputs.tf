output "web_acl_id" {
  value = concat(aws_wafregional_web_acl.this.*.id, [""],)[0]
}

output "web_acl_arn" {
  value = concat(aws_wafregional_web_acl.this.*.arn, [""],)[0]
}