resource "aws_api_gateway_usage_plan" "this" {
  name        = var.name
  description = var.description

  dynamic "api_stages" {
    for_each = var.apis
    content {
      api_id = api_stages.value["id"]
      stage  = api_stages.value["stage"]
    }
  }

  //
  //  quota_settings {
  //    limit  = 20
  //    offset = 2
  //    period = "WEEK"
  //  }
  //
  //  throttle_settings {
  //    burst_limit = 5
  //    rate_limit  = 10
  //  }
}

