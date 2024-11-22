

resource "azurerm_resource_group" "training" {
  name     = var.resource_group_name
  location = var.resource_group_location

  tags     = {
    environment = "staging"
  }

  timeouts {
    create = "5m"
    update = "5m"
    delete = "5m"
  }

}



