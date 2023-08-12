provider "azurerm" {
  features {}
}

resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = "West Europe"
  resource_group_name = "rg-uks-openai-agentsummary4-tpoc-dev"
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "slingshottesting2"
  location            = "West Europe"
  resource_group_name = "rg-uks-openai-agentsummary4-tpoc-dev"
  app_service_plan_id = azurerm_app_service_plan.example.id

#   site_config {
#     linux_fx_version = "NODE|16-lts"
#   }

  app_settings = {
    "WEBSITES_PORT" = "3000"  # Port your app listens on
  }

  

}
