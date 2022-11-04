module "cluster" {
  source                  = "./modules/cluster"
  aws_public_subnet       = module.network.aws_public_subnet
  cluster_name            = "project-eks-${random_string.suffix.result}"
  public_access_cidrs     = ["0.0.0.0/0"]
  node_group_name         = "project22"
  role_arn                = module.security.role_arn
  nodeSGid                = module.security.nodeSGid
  rolearn2                = module.security.rolearn2  
  scaling_desired_size    = 2
  scaling_max_size        = 2
  scaling_min_size        = 2
  instance_types          = ["t3.small"]
  key_pair                = "latestpair"
  nodegroupID             = module.security.nodegroupID
  clusterpolicy           = module.security.clusterpolicy
  controller              = module.security.controller
}

module "network" {
  source                  = "./modules/network"
  tags                    = "Project22"
  instance_tenancy        = "default"
  vpc_cidr                = "10.0.0.0/16"
  access_ip               = "0.0.0.0/0"
  public_sn_count         = 2
  public_cidrs            = ["10.0.1.0/24", "10.0.2.0/24"]
  map_public_ip_on_launch = true
  rt_route_cidr_block     = "0.0.0.0/0"
}

module "security" {
  source = "./modules/security"
  vpc_id                  = module.network.vpc_id
}






