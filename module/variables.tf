variable "eks_addon_kube_proxy_version" {
  type        = string
  description = "Kube proxy managed EKS addon version."
  default     = "v1.20.4-eksbuild.2"
}

variable "eks_addon_core_dns_version" {
  type        = string
  description = "Core DNS managed EKS addon version."
  default     = "v1.8.3-eksbuild.1"
}

variable "eks_addon_vpc_cni_version" {
  type        = string
  description = "VPC CNI managed EKS addon version."
  default     = "v1.7.5-eksbuild.2"
}

variable "cluster_version" {
  type        = string
  description = "EKS version deployed"
  default     = "1.20"
}

variable "enable_addon_coredns" {
  description = "Enable CoreDNS add-on"
  type        = bool
  default     = true
}

variable "enable_addon_kubeproxy" {
  description = "Enable kube-proxy add-on"
  type        = bool
  default     = true
}

variable "enable_addon_vpc_cni" {
  description = "Enable vpc_cni add-on"
  type        = bool
  default     = true
}

variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
  default     = "example-cluster"
}