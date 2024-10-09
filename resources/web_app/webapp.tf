resource "azurerm_service_plan" "plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app" {
  name                = var.web_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      node_version = "16-lts"
    }
  }
}

#  connection_string {
#    name  = "Database"
#    type  = "SQLServer"
#    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#  }

