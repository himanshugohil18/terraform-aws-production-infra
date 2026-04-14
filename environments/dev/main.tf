################################
# NETWORKING
################################

module "vpc" {
  source     = "../../modules/networking/vpc"
  cidr_block = "10.0.0.0/16"
  name       = "dev-vpc"
}

module "subnets" {
  source          = "../../modules/networking/subnets"
  vpc_id          = module.vpc.vpc_id
  public_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
  private_cidrs   = ["10.0.3.0/24", "10.0.4.0/24"]
  azs             = ["ap-south-1a", "ap-south-1b"]
}

module "igw" {
  source = "../../modules/networking/igw"
  vpc_id = module.vpc.vpc_id
}

module "nat" {
  source           = "../../modules/networking/nat"
  public_subnet_id = module.subnets.public_subnets[0]
  igw_id           = module.igw.igw_id
}

module "route_tables" {
  source          = "../../modules/networking/route-tables"
  vpc_id          = module.vpc.vpc_id
  igw_id          = module.igw.igw_id
  nat_id          = module.nat.nat_id
  public_subnets  = module.subnets.public_subnets
  private_subnets = module.subnets.private_subnets
}

################################
# SECURITY
################################

module "nsg" {
  source = "../../modules/networking/nsg"
  vpc_id = module.vpc.vpc_id
}

module "iam_role" {
  source = "../../modules/security/iam-role"
}

################################
# LOAD BALANCER (FIRST)
################################

module "target_group" {
  source = "../../modules/loadbalancing/target-group"
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source  = "../../modules/loadbalancing/alb"
  subnets = module.subnets.public_subnets
  sg_id   = module.nsg.alb_sg_id
}

module "listener" {
  source  = "../../modules/loadbalancing/listener"
  alb_arn = module.alb.alb_arn
  tg_arn  = module.target_group.tg_arn
}

################################
# COMPUTE (AFTER TG)
################################

module "launch_template" {
  source           = "../../modules/compute/launch-template"
  ami              = var.ami
  instance_type    = var.instance_type
  sg_id            = module.nsg.ec2_sg_id
  key_name         = var.key_name
  instance_profile = module.iam_role.instance_profile
}

module "autoscaling" {
  source  = "../../modules/compute/autoscaling"
  lt_id   = module.launch_template.lt_id
  subnets = module.subnets.public_subnets
  tg_arn  = module.target_group.tg_arn
}

################################
# DATABASE
################################

module "db_subnet_group" {
  source  = "../../modules/database/subnet-group"
  subnets = module.subnets.private_subnets
}

module "rds" {
  source       = "../../modules/database/rds"
  db_user      = var.db_user
  db_password  = var.db_password
  subnet_group = module.db_subnet_group.name
  sg_id        = module.nsg.rds_sg_id
}

################################
# STORAGE
################################

module "s3" {
  source      = "../../modules/storage/s3"
  bucket_name = "my-dev-bucket-12345"
}

################################
# MONITORING
################################

module "cloudwatch" {
  source = "../../modules/monitoring/cloudwatch"
}

module "alarms" {
  source = "../../modules/monitoring/alarms"
}

################################
# OPTIONAL (ADVANCED MODULES READY)
################################

# module "ecr" {
#   source    = "../../modules/containers/ecr"
#   repo_name = "app-repo"
# }

# module "route53" {
#   source = "../../modules/dns/route53"
#   domain = "example.com"
# }