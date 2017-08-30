// ACME configuration
//
// Note: You must have https://github.com/paybyphone/terraform-provider-acme installed

variable "email_address" {
  type        = "string"
  description = "Your email address to be used for the ACME registration."
}

variable "server_url" {
  type = "string"

  description = <<EOF
The ACME server URL.

Examples:
- https://acme-staging.api.letsencrypt.org/directory
- https://acme-v01.api.letsencrypt.org/directory
EOF
}

variable "provider" {
  type = "string"

  description = <<EOF
The ACME provider to be used.

See https://github.com/paybyphone/terraform-provider-acme/blob/3b16adc/plugin/providers/acme/acme_structure.go#L504-L531
for a list of supported providers.
EOF
}

variable "provider_config" {
  type        = "map"
  description = "(optional) The acme provider configuration as per https://github.com/paybyphone/terraform-provider-acme#using-dns-challenges."
}

variable "base_address" {
  type = "string"
}
