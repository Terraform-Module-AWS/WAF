resource "aws_wafregional_byte_match_set" "byte_match_set" {
  count = var.create_byte_set ? 1 : 0
  name = var.byte_set_name

  dynamic "byte_match_tuples" {
    for_each = var.byte_match_tuples
    iterator = b

    content {
      text_transformation   = b.value["text_transformation"]
      target_string         = lookup(b.value, "target_string", null)
      positional_constraint = b.value["positional_constraint"]
      
      dynamic "field_to_match" {
          for_each = length(keys(lookup(b.value, "field_to_match", {}))) == 0 ? [] : [lookup(b.value, "field_to_match", {})]
          iterator  = f

          content {
              type = f.value["type"]
              data = lookup(f.value, "data", null)
          }

      }
    }
  }
}

resource "aws_wafregional_geo_match_set" "geo_match_set" {
    count = var.create_geo_set ? 1 : 0
    name = var.geo_match_name

    dynamic "geo_match_constraint" {

        for_each = var.geo_match_constraints
        iterator = g

        content {
            type    = "Country"
            value   = g.value["value"]
        }
    }
}

resource "aws_wafregional_ipset" "ipset" {
    count = var.create_ipset ? 1 : 0
    name = var.ipset_name

    dynamic "ip_set_descriptor" {
        for_each = var.ip_set_descriptors
        iterator = i

        content {
            type    = i.value["type"]
            value   = i.value["value"]
        }
    }
}

resource "aws_wafregional_regex_pattern_set" "regex_pattern_set" {
  count = var.create_regex_set ? 1 : 0
  name                  = var.regex_pattern_set_name
  regex_pattern_strings = var.regex_pattern_strings
}

resource "aws_wafregional_regex_match_set" "regex_match_set" {
  count = var.create_regex_set ? 1 : 0
  name = var.regex_match_name
  depends_on = [ aws_wafregional_regex_pattern_set.regex_pattern_set ]

  dynamic "regex_match_tuple" {
      for_each = var.regex_match_tuple
      iterator = r

      content {
          dynamic "field_to_match" {
              for_each = length(keys(lookup(r.value, "field_to_match", {}))) == 0 ? [] : [lookup(r.value, "field_to_match", {})]
              iterator = f
              
              content {
                  data = lookup(f.value, "data", null)
                  type = f.value["type"]
              }

          }
          regex_pattern_set_id = aws_wafregional_regex_pattern_set.regex_pattern_set.id
          text_transformation = r.value["text_transformation"]
      }
  }
}

resource "aws_wafregional_size_constraint_set" "size_constraint_set" {

  count = var.create_size_constraint_set ? 1 : 0
  name = var.size_constraint_set_name

  dynamic "size_constraints" {
      for_each = var.size_constraints
      iterator = s

      content {
          dynamic "field_to_match" {
              for_each = length(keys(lookup(s.value, "field_to_match", {}))) == 0 ? [] : [lookup(s.value, "field_to_match", {})]
              iterator = f

              content {
                type = f.value["type"]
                data = lookup(f.value, "data", null)
              }
          }

          text_transformation = s.value["text_transformation"]
          comparison_operator = s.value["comparison_operator"]
          size                = s.value["size"]
      }
  }
}

resource "aws_wafregional_sql_injection_match_set" "sql_injection_match_set" {

    count = var.create_sql_injection_set ? 1 : 0
    name = var.sql_injection_match_name

    dynamic "sql_injection_match_tuple" {
        for_each = var.sql_injection_match_tuples
        iterator = s

        content {
            text_transformation = s.value["text_transformation"]

            dynamic "field_to_match" {
              for_each = length(keys(lookup(s.value, "field_to_match", {}))) == 0 ? [] : [lookup(s.value, "field_to_match", {})]
              iterator = f

              content {
                type = f.value["type"]
                data = lookup(f.value, "data", null)
              }
            }
        }
    }
}

resource "aws_wafregional_xss_match_set" "xss_match_set" {
    count = var.create_xss_set ? 1 : 0
    name = var.xss_match_name

    dynamic "xss_match_tuple" {
        for_each = var.xss_match_tuples
        iterator = x

        content {
            text_transformation = x.value["text_transformation"]
            dynamic "field_to_match" {
                for_each = length(keys(lookup(x.value, "field_to_match", {}))) == 0 ? [] : [lookup(x.value, "field_to_match", {})]
                iterator = f

                content {
                    type = f.value["type"]
                    data = lookup(f.value, "data", null)
                }
            }
        }
    }
}