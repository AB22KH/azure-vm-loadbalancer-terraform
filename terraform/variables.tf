
variable "RESOURCE_GROUP_NAME" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "LOCATION" {
  description = "Azure region for deployment"
  type        = string
  default     = "West Europe"
}

variable "VM_COUNT" {
  description = "Number of Virtual Machines"
  type        = number
  default     = 2
}
