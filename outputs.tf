output "bot_web_apps" {
  description = "All bot_web_app resources"
  value       = azurerm_bot_web_app.bot_web_apps
  sensitive   = true
}
output "bot_web_apps_developer_app_insights_api_key" {
  description = "List of developer_app_insights_api_key values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.developer_app_insights_api_key]
  sensitive   = true
}
output "bot_web_apps_developer_app_insights_application_id" {
  description = "List of developer_app_insights_application_id values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.developer_app_insights_application_id]
}
output "bot_web_apps_developer_app_insights_key" {
  description = "List of developer_app_insights_key values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.developer_app_insights_key]
}
output "bot_web_apps_display_name" {
  description = "List of display_name values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.display_name]
}
output "bot_web_apps_endpoint" {
  description = "List of endpoint values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.endpoint]
}
output "bot_web_apps_location" {
  description = "List of location values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.location]
}
output "bot_web_apps_luis_app_ids" {
  description = "List of luis_app_ids values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.luis_app_ids]
}
output "bot_web_apps_luis_key" {
  description = "List of luis_key values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.luis_key]
  sensitive   = true
}
output "bot_web_apps_microsoft_app_id" {
  description = "List of microsoft_app_id values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.microsoft_app_id]
}
output "bot_web_apps_microsoft_app_tenant_id" {
  description = "List of microsoft_app_tenant_id values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.microsoft_app_tenant_id]
}
output "bot_web_apps_microsoft_app_type" {
  description = "List of microsoft_app_type values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.microsoft_app_type]
}
output "bot_web_apps_microsoft_app_user_assigned_identity_id" {
  description = "List of microsoft_app_user_assigned_identity_id values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.microsoft_app_user_assigned_identity_id]
}
output "bot_web_apps_name" {
  description = "List of name values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.name]
}
output "bot_web_apps_resource_group_name" {
  description = "List of resource_group_name values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.resource_group_name]
}
output "bot_web_apps_sku" {
  description = "List of sku values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.sku]
}
output "bot_web_apps_tags" {
  description = "List of tags values across all bot_web_apps"
  value       = [for k, v in azurerm_bot_web_app.bot_web_apps : v.tags]
}

