data "azuread_user" "TF-AD-USER" {
  user_principal_name = var.default_aks_admin_member_upn
}

resource "azuread_group" "TF-AKS-GROUP" {
  display_name            = var.aks_group_name
  prevent_duplicate_names = true
}

resource "azuread_group_member" "TF-AKS-GROUP-MEMBERS" {
  group_object_id  = azuread_group.TF-AKS-GROUP.id
  member_object_id = data.azuread_user.TF-AD-USER.id
}