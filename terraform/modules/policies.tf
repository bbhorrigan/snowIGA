resource "snowflake_network_policy" "restricted_policy" {
  name    = "RestrictedAccessPolicy"
  allowed_ip_list = var.allowed_ip_list
  comment = "Restricts access to corporate IPs"
}
