# Platform Layer 0 Starter Kit

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

## Overview

TODO

## Codebase structure

### Platform IaC module code repo
    .
    └── root
        ├── .vscode             # VS Code dev workspace settings
        ├── docs                # Repo docs
        ├── governance          # Governance resource modules
        ├── identity            # IaM resource modules
        ├── security            # Security resource modules
        ├── network             # Network resource modules
        ├── automation          # Automation resource modules 
        ├── storage             # Storage resource modules
        ├── compute             # Compute resource modules

### Platform live code repo (one per platform architecture level)
    .
    └── root
        ├── .vscode             # VS Code dev workspace settings
        ├── docs                # Repo docs
        ├── scripts             # Scripts required artifacts            
        └── live                    # IaC live code
            └──domain                   # Operating domain [governance, identity, etc.]
                └── cloud-provider          # CSPs [aws, azure, gcp]
                    └── cloud-region            # Regions [eastus, westus]

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

## Setup workflow

1. Download
2. [Build](#build)

## Build workflow

### Local build

1. Step
2. Step

### Remote build
TODO

## Development and Contributing  

[Developer guide](docs/guide-development.md)

[Contributor guide](CONTRIBUTING.md)