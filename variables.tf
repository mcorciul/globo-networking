variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
  default     = "PR-0001"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
  default     = "BC-9990"
}

variable "city" {
  type        = string
  description = "city"
  default     = "Rome"
}

variable "country" {
  type        = string
  description = "country"
}

variable "continent" {
  type        = string
  description = "continent"
}

locals {
  common_tags = {
    company      = var.company
    project      = var.project
    billing_code = var.billing_code
    city         = var.city
    country      = var.country
    continent    = var.continent
  }
}
