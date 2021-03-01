variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}

variable "resourcename" {
    description = "Resource Group name in Azure"
    type        = string
}


variable "acrname"{
    description = "Name of Container Register"
    type        = string
}
variable "clustername" {
    description = "Cluster AKS name in Azure"
    type        = string
}

variable "location" {
    description = "Location of Resource Group"
    type        = string
}

variable "dnspreffix" {
    description = "DNS Prefix"
    type        = string
}

variable "size" {
    description = "Size of Cluster in AKS"
    type        = string
}

variable "agentnode" {
    description = "Node Count of Cluster"
    type        =  string
}

variable "environment" {
    description = "Environment name"
    type        = string
}

# variable "subscription_id" {
#   default = "f7460326-f026-4c50-a749-6e70fd9494fc"
# }

# variable "client_id" {
#   default = "447347b5-0f22-4b64-aa73-18ea9f408f4d"
# }

# variable "client_secret" {
#   default = "f511380e-3822-430d-a174-f4a9fe8a8120"
# }

# variable "tenant_id" {
#   default = "8567653e-0122-43c1-a8bc-4564e834e8aa"
# }