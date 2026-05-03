variable "domain" {
  description = "The domain to manage"
  type        = string
  default     = "neffi.fr"
}

variable "kube_config_path" {
  description = "The path to the kubeconfig to use"
  type        = string
  default     = "~/.kube/config"
}

variable "pihole_url" {
  description = "The URL of the Pi-hole instance"
  type        = string
}

variable "pihole_password" {
  description = "The admin password for the Pi-hole"
  type        = string
  sensitive   = true
}

variable "pihole_target_ip" {
  description = "The targeted ip address by pihole records"
  type        = string
}

variable "ovh_endpoint" {
  description = "The ovh endpoint to use"
  type        = string
  default     = "ovh-eu"
}

variable "ovh_application_key" {
  description = "The application key for ovh"
  type        = string
  sensitive   = true
}

variable "ovh_application_secret" {
  description = "The application secret for ovh"
  type        = string
  sensitive   = true
}

variable "ovh_consumer_key" {
  description = "The consumer key for ovh"
  type        = string
  sensitive   = true
}

variable "ovh_target_ip" {
  description = "The targeted ip address by ovh records"
  type        = string
}
