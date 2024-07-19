# Synthetics Tests for http services

The scripts in this folder contains the code for creation synthetics tests
in Datadog together with a monitor, alert notification and SLO.

## Prerequisite
- `TF_VAR_datadog_api_key` - environment variable with Datadog Api-Key
- `TF_VAR_datadog_app_key` - environment variable with Datadog App-Key
- `TF_VAR_datadog_api_url` - environment variable with Datadog Api-Url

## Execution step
- Review the tfvars file of the relevant service and environment and make changes if necessary.
- Execution exmaple:
```
terraform plan -out=plan -var-file=./synthetic-test-examplev.tfvars
terraform apply plan
```
