
resource "azurerm_management_group" "mg" {
  name        = var.management_group_name
  display_name = var.display_name
  parent_management_group_id   = var.parent_id
}