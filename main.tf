provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "app" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
    enable_auto_scaling = true // Enable autoscaling for the node pool.
    max_count  = 3
    min_count  = 1
  }

  identity {
    type = "SystemAssigned"
  }
}
