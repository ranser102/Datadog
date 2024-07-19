variable "test_name" {}
variable "test_type" {}
variable "test_subtype" {}
variable "test_status" {}
variable "test_message" {}
variable "test_locations" {}
variable "test_tags" {}
variable "test_url" {}
variable "test_request_headers" {}
variable "test_assertion_body_hash" {}
variable "check_body_hash" {}
variable "test_assertion_status_code" {}
variable "test_allow_insecure" {}
variable "test_tick_every" {}
variable "test_retry_count" {}
variable "test_retry_interval" {}
variable "test_renotify_interval" {}
variable "slo_name" {}
variable "slo_type" {}
variable "slo_tags" {}
variable "slo_threshold_timeframe" {}
variable "slo_threshold_target" {}
variable "slo_threshold_warning" {}

variable "datadog_api_key" {}
variable "datadog_api_url" {}
variable "datadog_app_key" {}


module "synthetic_test_for_mysvc" {
  source = "../modules/datadog-synthetics-slo"

  test_name                  = var.test_name
  test_type                  = var.test_type
  test_subtype               = var.test_subtype
  test_status                = var.test_status
  test_message               = var.test_message
  test_locations             = var.test_locations
  test_tags                  = var.test_tags
  test_url                   = var.test_url
  test_request_headers       = var.test_request_headers
  test_assertion_body_hash   = var.test_assertion_body_hash
  check_body_hash            = var.check_body_hash
  test_assertion_status_code = var.test_assertion_status_code
  test_allow_insecure        = var.test_allow_insecure
  test_tick_every            = var.test_tick_every
  test_retry_count           = var.test_retry_count
  test_retry_interval        = var.test_retry_interval
  test_renotify_interval     = var.test_renotify_interval

  slo_name                = var.slo_name
  slo_type                = var.slo_type
  slo_tags                = var.slo_tags
  slo_threshold_timeframe = var.slo_threshold_timeframe
  slo_threshold_target    = var.slo_threshold_target
  slo_threshold_warning   = var.slo_threshold_warning

  datadog_api_key = var.datadog_api_key
  datadog_api_url = var.datadog_api_url
  datadog_app_key = var.datadog_app_key
}


