# terraform-aws-eks-addons
Terraform module to create AWS EKS addons (vpc-cni, kube-proxy and coreDNS)

## Usage
You can use this module to create and provision eks addons unto a Kubernetes cluster
hosted on AWS.

Check the [example](example/) snippets.

### Simple example
This example provisions eks addons for K8s 1.21

```
module "cluster_addons" {
  source                       = "../../module"
  cluster_name                 = "demo-cluster"
  eks_addon_core_dns_version   = local.eks_addon_versions.coredns[local.cluster_version]
  eks_addon_kube_proxy_version = local.eks_addon_versions.kube_proxy[local.cluster_version]
  eks_addon_vpc_cni_version    = local.eks_addon_versions.vpc_cni[local.cluster_version]
}

locals {
  cluster_version = "1.21"
  eks_addon_versions = {
    coredns = {
      "1.21" = "v1.8.4-eksbuild.1"
      "1.20" = "v1.8.3-eksbuild.1"
    }
    kube_proxy = {
      "1.21" = "v1.21.2-eksbuild.2"
      "1.20" = "v1.20.4-eksbuild.2"
    },
    vpc_cni = {
      "1.21" = "v1.10.2-eksbuild.1"
      "1.20" = "v1.8.0-eksbuild.1"
    },
  }
}
```
