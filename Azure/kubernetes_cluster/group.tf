resource "azuread_group" "TF-GROUP" {
  display_name = var.group_name
}