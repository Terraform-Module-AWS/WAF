resource "aws_waf_rate_based_rule" "rate_based_rule" {
  count         = var.create_rate_based_rule ? 1 : 0
  name          = var.rate_based_rule_name
  metric_name   = var.rate_based_rule_metric_name

  rate_key = var.rate_key
  rate_limit = var.rate_limit

  dynamic "predicates" {
      for_each = var.rate_predicates
      iterator = p

      content {
          data_id   = p.value["data_id"]
          type      = p.value["type"]
          negated   = p.value["negated"]
      }
  }

  tags = var.rate_tags
}

resource "aws_waf_rule" "regular_rule" {
  count         = var.create_regular_rule ? 1 : 0
  name          = var.regular_rule_name
  metric_name   = var.regular_rule_metric_name

  dynamic "predicates" {
      for_each = var.regular_rule_predicates
      iterator = p

      content {
          data_id   = p.value["data_id"]
          type      = p.value["type"]
          negated   = p.value["negated"]
      }
  }

  tags = var.regular_rule_tags
}