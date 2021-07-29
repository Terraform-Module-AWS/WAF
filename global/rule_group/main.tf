
resource "aws_waf_rule_group" "rule_group" {
  count       = var.create_rule_group ? 1 : 0
  name        = var.rule_group_name
  metric_name = var.rule_group_metric_name

  dynamic "activated_rule" {

      for_each = var.activated_rules
      iterator = a

      content {
        dynamic "action" {
          for_each = length(keys(lookup(a.value, "action", {}))) == 0 ? [] : [lookup(a.value, "action", {})]
          
          content {
            type = action.value["type"]
          }
        }

        rule_id = a.value["rule_id"]
        priority = a.value["priority"]

        type = lookup(a.value, "type", "REGULAR")
      }
  }

  tags = var.tags
}