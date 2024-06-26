module "vpc" {
    #source = "../terraform-aws-vpc"     #if working in local we can give module location path
    source = "git::https://github.com/saipavan4572/terraform-aws-vpc?ref=main"
    # source we can give the git repo location with branch reference - default it will take "main" branch
    # once we run- "terraform init -reconfigure" - then the module code will be download from the git repo.
    project_name = var.project_name
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
    ## here we are passing the peering value as true so it will connect to the default VPC in the account. 
}

## if there are any changes happend in the module then we can run the below command to get the latest changes
## terraform init -upgrade

# $ terraform init -upgrade
# Initializing the backend...
# Upgrading modules...
# Downloading git::https://github.com/saipavan4572/terraform-aws-vpc?ref=main for vpc...
# - vpc in .terraform\modules\vpc
# ...