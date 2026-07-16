output "bot_web_apps_id" {
  description = "Map of id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_web_apps_developer_app_insights_api_key" {
  description = "Map of developer_app_insights_api_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_api_key if v.developer_app_insights_api_key != null && length(v.developer_app_insights_api_key) > 0 }
  sensitive   = true
}
output "bot_web_apps_developer_app_insights_application_id" {
  description = "Map of developer_app_insights_application_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_application_id if v.developer_app_insights_application_id != null && length(v.developer_app_insights_application_id) > 0 }
}
output "bot_web_apps_developer_app_insights_key" {
  description = "Map of developer_app_insights_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.developer_app_insights_key if v.developer_app_insights_key != null && length(v.developer_app_insights_key) > 0 }
}
output "bot_web_apps_display_name" {
  description = "Map of display_name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bot_web_apps_endpoint" {
  description = "Map of endpoint values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "bot_web_apps_location" {
  description = "Map of location values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_web_apps_luis_app_ids" {
  description = "Map of luis_app_ids values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.luis_app_ids if v.luis_app_ids != null && length(v.luis_app_ids) > 0 }
}
output "bot_web_apps_luis_key" {
  description = "Map of luis_key values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.luis_key if v.luis_key != null && length(v.luis_key) > 0 }
  sensitive   = true
}
output "bot_web_apps_microsoft_app_id" {
  description = "Map of microsoft_app_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_id if v.microsoft_app_id != null && length(v.microsoft_app_id) > 0 }
}
output "bot_web_apps_microsoft_app_tenant_id" {
  description = "Map of microsoft_app_tenant_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_tenant_id if v.microsoft_app_tenant_id != null && length(v.microsoft_app_tenant_id) > 0 }
}
output "bot_web_apps_microsoft_app_type" {
  description = "Map of microsoft_app_type values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_type if v.microsoft_app_type != null && length(v.microsoft_app_type) > 0 }
}
output "bot_web_apps_microsoft_app_user_assigned_identity_id" {
  description = "Map of microsoft_app_user_assigned_identity_id values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.microsoft_app_user_assigned_identity_id if v.microsoft_app_user_assigned_identity_id != null && length(v.microsoft_app_user_assigned_identity_id) > 0 }
}
output "bot_web_apps_name" {
  description = "Map of name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bot_web_apps_resource_group_name" {
  description = "Map of resource_group_name values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "bot_web_apps_sku" {
  description = "Map of sku values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "bot_web_apps_tags" {
  description = "Map of tags values across all bot_web_apps, keyed the same as var.bot_web_apps"
  value       = { for k, v in azurerm_bot_web_app.bot_web_apps : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

