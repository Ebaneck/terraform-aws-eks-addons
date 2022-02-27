resource "aws_eks_addon" "kube_proxy" {
  count             = var.enable_addon_kubeproxy ? 1 : 0
  cluster_name      = var.cluster_name
  addon_name        = "kube-proxy"
  addon_version     = var.eks_addon_kube_proxy_version
  resolve_conflicts = "OVERWRITE"
}

resource "aws_eks_addon" "core_dns" {
  count             = var.enable_addon_coredns ? 1 : 0
  cluster_name      = var.cluster_name
  addon_name        = "coredns"
  addon_version     = var.eks_addon_core_dns_version
  resolve_conflicts = "OVERWRITE"
}

resource "aws_eks_addon" "vpc_cni" {
  count             = var.enable_addon_vpc_cni ? 1 : 0
  cluster_name      = var.cluster_name
  addon_name        = "vpc-cni"
  addon_version     = var.eks_addon_vpc_cni_version
  resolve_conflicts = "OVERWRITE"
}
