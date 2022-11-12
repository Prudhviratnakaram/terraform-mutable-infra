VPC_CIDR="10.100.0.0/16"
subnets = {
  public ={
    name = "public"
    subnet_cidr= [ "10.100.0.0/24", "10.100.1.0/24"]
    igw = true
    ngw = false
  }
    apps = {
      name = "apps-private"
      subnet_cidr= [ "10.100.2.0/24", "10.100.3.0/24"]
      ngw = true
      igw = false
    }
  db = {
    name        = "public"
    subnet_cidr = ["10.100.0.0/24", "10.100.1.0/24"]
    ngw = true
    igw = false
  }
}

env="dev"