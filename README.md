# Terraform basic guide with DigitalOcean cloud provider


## We will use tfenv to manage the version of the terraform:
https://github.com/tfutils/tfenv

- After install tfenv use bellow command to install latest terraform version
```
tfenv install latest
```

```
tfenv use latest
```

- Then check version of terraform
```
terraform version
```

## Workspaces 
- Terraform have workspaces, so we wiil to create many resources for each of workspace. it such as a environment variable
- For example, we will save available of dev environment in digitalocean.tfvars and chose file apply when use terraform commands

- We will create values of variables in file digitalocean.tfvars
- When we use 'terraform init' it will create a workspace is 'default'
- To create a new workspace: 
```terraform workspace new dev```
- View list of workspace: 
```terraform workspace list```
- Switch to workspace: 
```terraform workspace select dev```

## Apply configuration
```
terraform init
```

```
terraform plan -var-file="digitalocean.tfvars" -var="pvt_key=$HOME/.ssh/id_rsa"
```

```
terraform apply -var-file="digitalocean.tfvars" -var="pvt_key=$HOME/.ssh/id_rsa" -auto-approve
```
