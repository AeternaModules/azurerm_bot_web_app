variable "bot_web_apps" {
  description = <<EOT
Map of bot_web_apps, attributes below
Required:
    - location
    - microsoft_app_id
    - name
    - resource_group_name
    - sku
Optional:
    - developer_app_insights_api_key
    - developer_app_insights_api_key_key_vault_id (alternative to developer_app_insights_api_key - read from Key Vault instead)
    - developer_app_insights_api_key_key_vault_secret_name (alternative to developer_app_insights_api_key - read from Key Vault instead)
    - developer_app_insights_application_id
    - developer_app_insights_key
    - display_name
    - endpoint
    - luis_app_ids
    - luis_key
    - luis_key_key_vault_id (alternative to luis_key - read from Key Vault instead)
    - luis_key_key_vault_secret_name (alternative to luis_key - read from Key Vault instead)
    - microsoft_app_tenant_id
    - microsoft_app_type
    - microsoft_app_user_assigned_identity_id
    - tags
EOT

  type = map(object({
    location                                             = string
    microsoft_app_id                                     = string
    name                                                 = string
    resource_group_name                                  = string
    sku                                                  = string
    developer_app_insights_api_key                       = optional(string)
    developer_app_insights_api_key_key_vault_id          = optional(string)
    developer_app_insights_api_key_key_vault_secret_name = optional(string)
    developer_app_insights_application_id                = optional(string)
    developer_app_insights_key                           = optional(string)
    display_name                                         = optional(string)
    endpoint                                             = optional(string)
    luis_app_ids                                         = optional(list(string))
    luis_key                                             = optional(string)
    luis_key_key_vault_id                                = optional(string)
    luis_key_key_vault_secret_name                       = optional(string)
    microsoft_app_tenant_id                              = optional(string)
    microsoft_app_type                                   = optional(string)
    microsoft_app_user_assigned_identity_id              = optional(string)
    tags                                                 = optional(map(string))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_bot_web_app's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: microsoft_app_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: microsoft_app_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: microsoft_app_tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: microsoft_app_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: microsoft_app_user_assigned_identity_id
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: endpoint
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: developer_app_insights_key
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: developer_app_insights_api_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: developer_app_insights_application_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: luis_app_ids[*]
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: luis_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

