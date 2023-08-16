module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "kpb-vpc-capstone"
  cidr = "10.7.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.7.1.0/24", "10.7.2.0/24"]
  public_subnets  = ["10.7.10.0/24", "10.7.20.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false
  map_public_ip_on_launch = true
  
  tags = {
    Terraform   = "true"
    Environment = "stage"
  }
}