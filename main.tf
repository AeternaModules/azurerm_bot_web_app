data "azurerm_key_vault_secret" "developer_app_insights_api_key" {
  for_each     = { for k, v in var.bot_web_apps : k => v if v.developer_app_insights_api_key_key_vault_id != null && v.developer_app_insights_api_key_key_vault_secret_name != null }
  name         = each.value.developer_app_insights_api_key_key_vault_secret_name
  key_vault_id = each.value.developer_app_insights_api_key_key_vault_id
}
data "azurerm_key_vault_secret" "luis_key" {
  for_each     = { for k, v in var.bot_web_apps : k => v if v.luis_key_key_vault_id != null && v.luis_key_key_vault_secret_name != null }
  name         = each.value.luis_key_key_vault_secret_name
  key_vault_id = each.value.luis_key_key_vault_id
}
resource "azurerm_bot_web_app" "bot_web_apps" {
  for_each = var.bot_web_apps

  location                                = each.value.location
  microsoft_app_id                        = each.value.microsoft_app_id
  name                                    = each.value.name
  resource_group_name                     = each.value.resource_group_name
  sku                                     = each.value.sku
  developer_app_insights_api_key          = each.value.developer_app_insights_api_key != null ? each.value.developer_app_insights_api_key : try(data.azurerm_key_vault_secret.developer_app_insights_api_key[each.key].value, null)
  developer_app_insights_application_id   = each.value.developer_app_insights_application_id
  developer_app_insights_key              = each.value.developer_app_insights_key
  display_name                            = each.value.display_name
  endpoint                                = each.value.endpoint
  luis_app_ids                            = each.value.luis_app_ids
  luis_key                                = each.value.luis_key != null ? each.value.luis_key : try(data.azurerm_key_vault_secret.luis_key[each.key].value, null)
  microsoft_app_tenant_id                 = each.value.microsoft_app_tenant_id
  microsoft_app_type                      = each.value.microsoft_app_type
  microsoft_app_user_assigned_identity_id = each.value.microsoft_app_user_assigned_identity_id
  tags                                    = each.value.tags
}

