# Platform Layer 0 Starter Kit

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

## Overview

TODO

## Codebase structure

### Repo layout

    .
    └── platform-layer-0
        ├── .vscode                 # IDE workspace config files
        ├── docs                    # Documentation files
        ├── infra                   # Infrastructure as Code source files
        ├── scripts                 # Scripted workflows
        ├── tests                   # Automated tests
        ├── CONTRIBUTING      
        ├── LICENSE
        └── README.md

## Deployment workflow

![Deployment workflow design](./docs/platform-deployment.png "Deployment Workflow")

### Guiding principles
* Deployment model should align with layered reference architecture
* Each layer is a security boundary
* Isolate state mgmt. per layer (one storage account, blob container per layer, scope RBAC to container)
* Isolate identity per layer (Azure AD SP per layer) 
* Layers 1 - 2 will deploy core platform services and workloads.  
* Layer 3 will deploy requested cloud landing zone subscriptions and fundamental services
* Layer 4 will deploy delegated access and solution accelerators to specificed landing zones 

---

## Requirements

### Required software

* Required software


This project has been tested with the following versions of required software

    Software v0.0.1
 

### Required access

TODO


## Setup

1. Download
2. [Build](#build)

## Build

### Local build

1. Step
2. Step

### Remote build
TODO

## Development and Contributing  

[Developer guide](docs/guide-development.md)

[Contributor guide](CONTRIBUTING.md)