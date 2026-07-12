output "bot_web_apps_developer_app_insights_api_key" {
  description = "Map of developer_app_insights_api_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_api_key }
  sensitive   = true
}
output "bot_web_apps_developer_app_insights_application_id" {
  description = "Map of developer_app_insights_application_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_application_id }
}
output "bot_web_apps_developer_app_insights_key" {
  description = "Map of developer_app_insights_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_key }
}
output "bot_web_apps_display_name" {
  description = "Map of display_name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.display_name }
}
output "bot_web_apps_endpoint" {
  description = "Map of endpoint values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.endpoint }
}
output "bot_web_apps_location" {
  description = "Map of location values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.location }
}
output "bot_web_apps_luis_app_ids" {
  description = "Map of luis_app_ids values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.luis_app_ids }
}
output "bot_web_apps_luis_key" {
  description = "Map of luis_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.luis_key }
  sensitive   = true
}
output "bot_web_apps_microsoft_app_id" {
  description = "Map of microsoft_app_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_id }
}
output "bot_web_apps_microsoft_app_tenant_id" {
  description = "Map of microsoft_app_tenant_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_tenant_id }
}
output "bot_web_apps_microsoft_app_type" {
  description = "Map of microsoft_app_type values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_type }
}
output "bot_web_apps_microsoft_app_user_assigned_identity_id" {
  description = "Map of microsoft_app_user_assigned_identity_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_user_assigned_identity_id }
}
output "bot_web_apps_name" {
  description = "Map of name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.name }
}
output "bot_web_apps_resource_group_name" {
  description = "Map of resource_group_name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.resource_group_name }
}
output "bot_web_apps_sku" {
  description = "Map of sku values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.sku }
}
output "bot_web_apps_tags" {
  description = "Map of tags values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.tags }
}

