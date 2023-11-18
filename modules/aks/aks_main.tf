resource "azurerm_kubernetes_cluster" "aks" {
  name                = "gtg01-aks"
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "gtg01"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}