# terraform-aws-ecs

![CI Terraform](https://github.com/benniemosher-dev/terraform-aws-ecs/actions/workflows/ci-terraform.yml/badge.svg)

⛺️ A TF module for AWS ECS. ⛺

## 📜 Usage:

- To install dependencies needed run:
  ```bash
  brew bundle install
  ```
- To initialize Terraform in this folder:
  ```bash
  task infra:init
  ```
- To update modules and providers in this folder:
  ```bash
  task init -- -upgrade
  ```
- To validate the module in this folder:
  ```bash
  task infra:validate
  ```
- To plan the infrastructure in this folder:
  ```bash
  task infra:plan
  ```
- To plan specific resources of infrastructure in this folder:
  ```bash
  task infra:plan -- -target='cloudflare_record.this'
  ```

### 🆒 Extras:

- To find all the automation available in this folder:
  ```bash
  task --list-all
  ```
- To estimate the cost of the infrastructure in this folder:
  ```bash
  task infra:cost
  ```
- To update the documentation in this folder:
  ```bash
  task infra:docs
  ```
- To lint the Terraform in this folder:
  ```bash
  task infra:lint
  ```
- To validate security in this folder:
  ```bash
  task infra:sec
  ```

## 📋 Documentation

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.40 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.46.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_logs"></a> [logs](#module\_logs) | github.com/benniemosher-dev/terraform-aws-cloudwatch-logs | v0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_iam_role.ecs-task-execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecs-task-execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.ecs-task-execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | The config to create the ECS cluster with. | <pre>object({<br>    # security-groups                = optional(list(string), [])<br>    assign-public-ip               = optional(bool, true)<br>    cloudwatch-encryption-enabled  = optional(bool, true)<br>    cloudwatch-log-group-name      = optional(bool, null)<br>    cluster-name                   = string<br>    cluster-settings               = optional(list(any), [])<br>    ecs-security-group             = optional(string)<br>    ecs-service-count              = optional(number, 1)<br>    environment                    = optional(list(any), null)<br>    image-url                      = string<br>    kms-key-arn                    = optional(string, null)<br>    launch-type                    = optional(string, "FARGATE")<br>    load-balancer-target-group     = string<br>    logging-command-configuration  = optional(string, "OVERRIDE")<br>    subnets                        = list(string)<br>    task-definition-container-port = optional(number, 3000)<br>    task-definition-cpu            = optional(number, 256)<br>    task-definition-file           = optional(string, null)<br>    task-definition-host-port      = optional(number, 3000)<br>    task-definition-memory         = optional(number, 512)<br>    task-definition-network-mode   = optional(string, "awsvpc")<br>    vpc                            = string<br>  })</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
