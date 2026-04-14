resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "node-group"

  node_role_arn = var.node_role
  subnet_ids    = var.subnets

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
}