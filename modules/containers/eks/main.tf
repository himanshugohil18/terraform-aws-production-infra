resource "aws_eks_cluster" "this" {
  name     = "eks-cluster"
  role_arn = var.cluster_role

  vpc_config {
    subnet_ids = var.subnets
  }
}