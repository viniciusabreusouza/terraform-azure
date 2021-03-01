provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = var.resourcename
  location = var.location

  tags = {
    environment = var.environment
  }
}

resource "azurerm_container_registry" "acr" {
  name                = var.acrname
  resource_group_name = azurerm_resource_group.default.name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = false

   tags = {
    environment = var.environment
  }
}


resource "azurerm_kubernetes_cluster" "default" {
  name                = var.clustername
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = var.dnspreffix

  default_node_pool {
    name            = "default"
    node_count      = var.agentnode
    vm_size         = var.size
    os_disk_size_gb = 30
  }

  # service_principal {
  #   client_id     = var.appId
  #   client_secret = var.password
  # }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
  }

  tags = {
    environment = var.environment
  }
}
