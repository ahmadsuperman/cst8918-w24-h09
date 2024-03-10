variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "myaksRGSultan"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "myAKSClusterSultan"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster."
  type        = string
  default     = "myaksclustersultan"
}
