variable "project" {
  type        = string
  description = "Project ID"
}

variable "environment" {
  type        = string
  description = "Environment Name"
}

variable "name" {
  type        = string
  description = "Firewall Rule Name"
}

variable "description" {
  type        = string
  description = "Description Of The Rule"
}

variable "network_name" {
  type        = string
  description = "Network Name"
  default     = "default"
}

variable "protocol" {
  type        = string
  description = "Network Protocol"
  default     = "tcp"
}

variable "allowed_tcp_ports" {
  type        = list(string)
  description = "List of all port numbers allowed to receive traffic"
}

variable "source_tags" {
  type        = list(string)
  description = "List of Source Tags"
  default     = []
}

variable "source_ranges" {
  type        = list(string)
  description = "List of Source Ranges"
  default     = []
}

variable "target_tags" {
  type        = list(string)
  description = "List of Target Ranges"
  default     = []
}