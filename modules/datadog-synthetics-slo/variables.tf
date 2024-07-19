
# export TF_VAR_datadog_app_key="" or export DD_APP_KEY="..."
# export TF_VAR_datadog_api_key="" or export DD_API_KEY="..."
# export TF_VAR_datadog_api_url="https://api.us5.datadoghq.com" or export DD_HOST="https://api.us5.datadoghq.com"

variable "datadog_api_key" {
  type        = string
  description = "The Datadog api key"
}

variable "datadog_app_key" {
  type        = string
  description = "The Datadog app key"
}

variable "datadog_api_url" {
  type        = string
  description = "The Datadog api server url"
}

### 
# Variables
variable "test_name" {
  type        = string
  description = "The name of the synthetic test"
}

variable "test_type" {
  type        = string
  default     = "api"
  description = "The type of the synthetic test"
}

variable "test_subtype" {
  type        = string
  default     = "http"
  description = "The subtype of the synthetic test"
}

variable "test_status" {
  type        = string
  default     = "live"
  description = "The status of the synthetic test"
}

variable "test_message" {
  type        = string
  description = "The alert message of the synthetic test"
}

variable "test_locations" {
  type        = list(string)
  default     = ["aws:us-east-1"]
  description = "The locations of the synthetic test"
}

variable "test_tags" {
  type        = list(string)
  description = "values to tag the synthetic test"
}

variable "test_url" {
  type        = string
  description = "The url of the synthetic test"
}

variable "test_request_headers" {
  type = map(string)
  default = {
    "Content-Type" = "application/json"
  }
  description = "The request headers of the synthetic test"
}

variable "test_assertion_body_hash" {
  type        = string
  description = "The assertion body hash of the synthetic test"
}

variable "check_body_hash" {
  type        = bool
  default     = false
  description = "The check body hash of the synthetic test"
}

variable "test_assertion_status_code" {
  type        = string
  default     = "200"
  description = "The assertion status code of the synthetic test"
}

variable "test_allow_insecure" {
  type        = bool
  default     = true
  description = "The allow insecure of the synthetic test"
}

variable "test_tick_every" {
  type        = number
  default     = 86400
  description = "The tick every of the synthetic test"
}

variable "test_retry_count" {
  type        = number
  default     = 3
  description = "The retry count of the synthetic test"
}

variable "test_retry_interval" {
  type        = number
  default     = 300
  description = "The retry interval of the synthetic test"
}

variable "test_renotify_interval" {
  type        = number
  default     = 120
  description = "The renotify interval of the synthetic test"
}

variable "slo_name" {
  type        = string
  description = "The name of the SLO"
}

variable "slo_type" {
  type        = string
  default     = "monitor"
  description = "The type of the SLO"
}

variable "slo_tags" {
  type        = list(string)
  description = "The tags of the SLO"
}

variable "slo_threshold_timeframe" {
  type        = string
  default     = "7d"
  description = "The threshold timeframe of the SLO"
}

variable "slo_threshold_target" {
  type        = number
  default     = 50.0
  description = "The threshold target of the SLO"
}

variable "slo_threshold_warning" {
  type        = number
  default     = 70.0
  description = "The threshold warning of the SLO"
}
