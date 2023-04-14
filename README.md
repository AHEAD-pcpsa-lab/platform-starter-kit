# Platform level 0

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

Build a cloud-native application, data, and cloud services hosting platform using Infrastructure as Code and GitOps best practices.

## Platform user-centric features and benefits

1. feature a
2. feature b
3. feature c

## Platform capabilites (these enable features above)

1. capability a
2. capability b
3. capability c

## Roadmap

1. Future feature x by implementing capability y, and z.

## Codebase structure
    .
    └── root
        ├── .vscode             # VS Code dev workspace settings
        ├── docs                # Repo docs
        ├── scripts             # Script code            
        └── infra                    # IaC live deplyment code
            ├── domain                   # Operating domain [governance, identity, etc.]
            |   └── cloud-provider          # CSPs [aws, azure, gcp, github]
            |       ├── [ mgmt-group ]          # Per mgmt. group deployment [see design]
            |       |   ├── main.tf                 # Deployment template
            |       |   ├── output.tf               # Deployment outputs
            |       |   └── variables.tf            # Deployment variables
            |       ├── [ region ]              # Per region deployment[see design]
            |       └── [ repo ]                # Per repo deployment [see design]
            └── modules                 # IaC module code
                ├── automation              # Automation resource modules
                |   └── azure-automation    # Per resource/service type module
                |       ├── main.tf                 # Module template
                |       └── variables.tf            # Module variables
                ├── compute                 # Compute resource modules
                ├── governance              # Governance resource modules
                ├── identity                # IaM resource modules
                ├── network                 # Network resource modules
                ├── security                # Security resource modules
                └── storage                 # Storage resource modules


## Deployment

### Guiding principles
* Deployment model should align with layered reference architecture
* Each layer is a security boundary
* Isolate state mgmt. per layer (one storage account, blob container per layer, scope RBAC to container)
* Isolate identity per layer (Azure AD SP per layer) 
* Layers 1 - 2 will deploy core platform services and workloads.  
* Layer 3 will deploy requested cloud landing zone subscriptions and fundamental services
* Layer 4 will deploy delegated access and solution accelerators to specificed landing zones

### Platform deployment workflow
![Deployment workflow design](./docs/images/platform-deployment.png "Deployment Workflow")

## Deployment requirements

### Software

* Git
* Terraform
* Azure CLI

This project has been tested with the following versions of required software:

    Git         v2.39.2
    Terraform   v1.4.x  - <v2.0.0
    Azure CLI   v2.47.0

### Access

* GitHub Organization (Org. admin and repo admin roles)
* Azure AD Tenant (Azure AD app and group admin role)
* Azure (Owner role at root group scope)
* Azure billing account (Invoice section owner role at invoice section scope)

## Development and contributing  

[Developer guide](docs/guide-development.md)

[Contributor guide](CONTRIBUTING.md)