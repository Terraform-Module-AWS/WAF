resource "aws_waf_web_acl" "this" {
    count = var.create_web_acl ? 1 : 0

    dynamic "default_action" {
        for_each = var.default_action
        iterator = d
        content {
            type = d.value["type"]
        }
    }

    name = var.web_acl_name
    metric_name = var.web_acl_metric_name

    dynamic "rules" {
        for_each = var.rules
        iterator = r

        content {
            priority = r.value["priority"]
            rule_id = r.value["rule_id"]
            type = lookup(r.value, "type", null)

            dynamic "action" {
                for_each = length(keys(lookup(r.value, "action", {}))) == 0 ? [] : [lookup(r.value, "action", {})]
                iterator = a
                content {
                    type = lookup(a.value, "type", null)
                }
            } 

            dynamic "override_action" {
                for_each = length(keys(lookup(r.value, "override_action", {}))) == 0 ? [] : [lookup(r.value, "override_action", {})]
                iterator = o
                content {
                    type = lookup(o.value, "type", null)
                }
            } 
        }
    }

    dynamic "logging_configuration" {
        for_each = var.logging_config
        iterator = l

        content {
            log_destination = l.value["log_destination"]
            dynamic "redacted_fields" {
                for_each = length(keys(lookup(l.value, "redacted_fields", {}))) == 0 ? [] : [lookup(l.value, "redacted_fields", {})]
                iterator = r

                content {
                    dynamic "field_to_match" {
                        for_each = length(keys(lookup(r.value, "field_to_match", {}))) == 0 ? [] : [lookup(r.value, "fied_to_match", {})]
                        iterator = f

                        content {
                          type = f.value["type"]
                          data = lookup(f.value, "data", null)
                        }
                    }
                }
            }
        }
    }

    tags = var.tags
}