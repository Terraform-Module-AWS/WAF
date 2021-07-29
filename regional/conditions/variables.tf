variable "create_byte_set" {
  description = "Whether to create byte match set condition"
  default = false
}

variable "create_geo_set" {
  description = "Whether to create geo match set condition"
  default = false
}

variable "create_ipset" {
  description = "Whether to create ipset condition"
  default = false
}

variable "create_regex_set" {
  description = "Whether to create regex match set condition"
  default = false
}

variable "create_size_constraint_set" {
  description = "Whether to create size constraint set condition"
  default = false
}

variable "create_sql_injection_set" {
  description = "Whether to create sql injection match set condition"
  default = false
}

variable "create_xss_set" {
  description = "Whether to create xss match set condition"
  default = false
}

variable "byte_set_name" {
  description = "Name for the byte match set"
  default = null
}

variable "geo_match_name" {
  description = "Name for the geo match set"
  default = null
}

variable "ipset_name" {
  description = "Name for the ipset"
  default = null
}

variable "regex_pattern_set_name" {
  description = "Name for the regex pattern set"
  default = null
}

variable "regex_pattern_strings" {
  description = "Pattern string for the regex"
  default = null
}

variable "regex_match_name" {
  description = "Name for the regex match set"
  default = null
}

variable "size_constraint_set_name" {
  description = "Name for the size constraint match set"
  default = null
}

variable "sql_injection_match_name" {
  description = "Name for the sql injection match set"
  default = null
}

variable "xss_match_name" {
  description = "Name for the xss match set"
  default = null
}

variable "byte_match_tuples" {
  description = "Specifies the bytes (typically a string that corresponds with ASCII characters) that you want to search for in web requests, the location in requests that you want to search, and other settings."
  default = []
}

variable "geo_match_constraints" {
  description = "The GeoMatchConstraint objects which contain the country that you want AWS WAF to search for."
  default = []
}

variable "ip_set_descriptors" {
  description = "One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate."
  default = []
}

variable "regex_match_tuple" {
  description = "The regular expression pattern that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings."
  default = []
}

variable "size_constraints" {
  description = "Specifies the parts of web requests that you want to inspect the size of."
  default = []
}

variable "sql_injection_match_tuples" {
  description = "The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header."
  default = []
}

variable "xss_match_tuples" {
  description = "The parts of web requests that you want to inspect for cross-site scripting attacks."
  default = []
}