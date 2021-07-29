output "byte_match_set_id" {
  description = "The id for the created created byte match condition."
  value = concat(aws_waf_byte_match_set.byte_match_set.*.id, [""],)[0]
}

output "ipset_id" {
  description = "The id of the ipset condition."
  value = concat(aws_waf_ipset.ipset.*.id, [""],)[0]
}

output "geo_match_set_id" {
  description = "The id for the created geo match condition"
  value = concat(aws_waf_geo_match_set.geo_match_set.*.id, [""],)[0]
}

output "regex_match_set_id" {
  description = "The id for the created regex match condition."
  value = concat(aws_waf_regex_match_set.regex_match_set.*.id, [""],)[0]
}

output "size_constraint_set_id" {
  description = "The id for the created size constraint size."
  value = concat(aws_waf_size_constraint_set.size_constraint_set.*.id, [""],)[0]
}

output "sql_injection_match_set_id" {
  description = "The id for the sql injection match set."
  value = concat(aws_waf_sql_injection_match_set.sql_injection_match_set.*.id, [""],)[0]
}

output "xss_match_set_id" {
  description = "The id for the xss injection match set."
  value = concat(aws_waf_xss_match_set.xss_match_set.*.id, [""],)[0]
}