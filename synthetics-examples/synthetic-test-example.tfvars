

slo_name = "SLO For mysvc in dev"
slo_tags = [
  "app:myapp",
  "service:mysvc",
  "env:dev"
]
slo_threshold_target    = 50
slo_threshold_timeframe = "7d"
slo_threshold_warning   = 70
slo_type                = "monitor"
test_allow_insecure     = true

# I am using the sha1 value of the response body to verify the response.
# Retrieval of the sha1 value can be achieved with this command:
# curl -sL <test url> | shasum -a 1
# The sha1 value is the first part of the output.
test_assertion_body_hash = "c4efc942012ef142f0e704865d603b310fa2ec31"
check_body_hash          = true

test_assertion_status_code = "200"
test_locations = [
  "aws:us-east-1"
]
test_message           = "@myemail@mydomain.com"
test_name              = "Availability For mysvc in dev"
test_renotify_interval = 120
test_request_headers = {
  "Content-Type" : "application/json"
}
test_retry_count    = 3
test_retry_interval = 300
test_status         = "live"
test_subtype        = "http"
test_tags = [
  "app:myapp",
  "service:mysvc",
  "env:dev"
]
test_tick_every = 86400
test_type       = "api"
test_url        = "https://mysvc.mydomain.com/health"
