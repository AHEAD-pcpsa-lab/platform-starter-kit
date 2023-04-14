# Platform level 0

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

## Overview

TODO

## Repo codebase structure
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
                |   └── storage-account     # Per resource/service type module
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

### Flow diagram
![Deployment workflow design](./docs/platform-deployment.png "Deployment Workflow")

## Setup requirements

### Software

* Required software

This project has been tested with the following versions of required software

    Software v0.0.1

### Access

TODO

## Development and Contributing  

[Developer guide](docs/guide-development.md)

[Contributor guide](CONTRIBUTING.md)