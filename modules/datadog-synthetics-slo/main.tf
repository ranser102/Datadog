
# Create a new Datadog Synthetics API/HTTP test on a service
resource "datadog_synthetics_test" "test_uptime_service" {
  name      = var.test_name
  type      = var.test_type
  subtype   = var.test_subtype
  status    = var.test_status
  message   = var.test_message
  locations = var.test_locations
  tags      = var.test_tags

  request_definition {
    method = "GET"
    url    = var.test_url
  }

  request_headers = var.test_request_headers

  dynamic "assertion" {
    for_each = var.check_body_hash ? [1] : []
    content {
      type     = "bodyHash"
      operator = "sha1"
      target   = var.test_assertion_body_hash
    }
  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = var.test_assertion_status_code
  }

  options_list {
    allow_insecure = var.test_allow_insecure
    tick_every     = var.test_tick_every
    retry {
      count    = var.test_retry_count
      interval = var.test_retry_interval
    }
    monitor_options {
      renotify_interval = var.test_renotify_interval
    }
  }
}

# write slo for the test
resource "datadog_service_level_objective" "slo_uptime" {
  name = var.slo_name
  type = var.slo_type
  tags = var.slo_tags
  thresholds {
    timeframe = var.slo_threshold_timeframe
    target    = var.slo_threshold_target
    warning   = var.slo_threshold_warning
  }

  monitor_ids = [datadog_synthetics_test.test_uptime_service.monitor_id]
}

