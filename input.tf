variable "zone-id" {
  description = "Zone id for the r53 record."
}

variable "name" {
  description = "Fully qualified domain name for the record."
}

variable "alias-name" {
  description = "Full qualified domain name for the alias record."
}

variable "alias-zone-id" {
  description = "Zone id for the r53 alias record."
}

variable "production" {
  description = "Used to prevent alias from being created in staging if only need in production."
}

variable "type" {
  default     = "A"
  description = "Record type"
}