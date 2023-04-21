# Contributor guide

> **Note:** this documentation is a work-in-progress - if you see something that's not quite right or missing, we'd really appreciate a PR!

When contributing to this project please follow guidane to help speed up testing and acceptance of your changes.

This contribution guide assumes you have at least a basic understanding of PowerShell and [Terraform](https://www.terraform.io/docs/language/index.html).

## Basics

* [Project overview](README.md#overview)

## Guides

* [Naming conventions](#folder-and-file-names)
* [Markdown coding](#markdown-coding)
* [Terraform coding](#terraform-coding)

## Name and folder structure conventions

### Folder and file names
Files and folders should be named consistently.
* Short but descriptive (<25 characters)
* Avoid special characters and spaces
* Use this formating: two-words (`kebab-case`)
* If using date, use date format ISO 8601: YYYYMMDD
* Include a version number if applicable

### Folder structure
Folder structure should reflect the following schema. All Terraform deployment and module folders require specified files.

    .                           
    └── platform-level-[x]          # One repo per platform leve
        ├── .github                     # GitHub configs
        |   └── workflows                   # Action configs
        ├── .vscode                     # VS Code workspace configs
        ├── docs                        # Repo docs
        ├── scripts                     # Script code
        ├── tflint                      # Tflint configs          
        └── infra                       # Infra deployment scripts (live)
            ├── automation               
            ├── governance-finops
            ├── governance-mgmt             # Tech domain deployment
            |   ├── main.tf                     # Deployment script
            |   ├── output.tf                   # Deployment output
            |   ├── provider.tf                 # Deployment provider
            |   ├── README.md                   # Deployment documentation
            |   ├── terraform.tfvars            # Deployment variable values
            |   └── variables.tf                # Deployment variables     
            ├── identity                 
            ├── operations-logging
            ├── operations-monitoring
            ├── operations-bcdr            
            ├── network                 
            ├── security                           
            └── modules                 # Module code
                └── policy-assignment       # Storage resource modules
                    ├── example                 # Module usage examples
                    |   └── example.tf              # Example deployment script
                    ├── main.tf                 # Module template
                    ├── output.tf               # Module outputs
                    ├── README.md               # Deployment documentation
                    └── variables.tf            # Module variables

### Markdown coding

* [Online referene](https://www.markdownguide.org/basic-syntax)

### Terraform coding

* [Online referene](https://github.com/x0techdad/cloud-platform-dev-ux/blob/main/docs/guide-terraform.md)

