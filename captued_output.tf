deepika@DESKTOP-9UCG9J2 MINGW65 ~/OneDrive/Desktop/deepika-terraform/terraform-case-study (main)
$ terraform apply --auto-approve
data.aws_vpc.default: Reading...
data.aws_ami.amazon_linux_2: Reading...
data.aws_ami.amazon_linux_2: Read complete after 1s [id=ami-051f8a213df8bc089]
data.aws_vpc.default: Read complete after 2s [id=vpc-0610724ef12184070]
data.aws_subnets.example: Reading...
data.aws_subnets.example: Read complete after 1s [id=us-east-1]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web_servers[0] will be created
  + resource "aws_instance" "web_servers" {
      + ami                                  = "ami-051f8a213df8bc089"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-005e73048a04fbfeb"
      + tags                                 = {
          + "Environment" = "Prod"
          + "Name"        = "case-study-web-server-A"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tags_all                             = {
          + "Environment" = "Prod"
          + "Name"        = "case-study-web-server-A"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "9c143e8ab976eca419b3784eddf5c0fd48c9de18"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_instance.web_servers[1] will be created
  + resource "aws_instance" "web_servers" {
      + ami                                  = "ami-051f8a213df8bc089"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-041c80ce8259d9ffc"
      + tags                                 = {
          + "Environment" = "Prod"
          + "Name"        = "case-study-web-server-B"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tags_all                             = {
          + "Environment" = "Prod"
          + "Name"        = "case-study-web-server-B"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tenancy                              = (known after apply)
      + user_data                            = "4c0330773c74341f5250db570191e345aa89bfb9"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_lb.tf_cs_alb will be created
  + resource "aws_lb" "tf_cs_alb" {
      + arn                                                          = (known after apply)
      + arn_suffix                                                   = (known after apply)
      + desync_mitigation_mode                                       = "defensive"
      + dns_name                                                     = (known after apply)
      + drop_invalid_header_fields                                   = false
      + enable_deletion_protection                                   = false
      + enable_http2                                                 = true
      + enable_tls_version_and_cipher_suite_headers                  = false
      + enable_waf_fail_open                                         = false
      + enable_xff_client_port                                       = false
      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)
      + id                                                           = (known after apply)
      + idle_timeout                                                 = 60
      + internal                                                     = false
      + ip_address_type                                              = (known after apply)
      + load_balancer_type                                           = "application"
      + name                                                         = "tf-case-study-proj-alb"
      + name_prefix                                                  = (known after apply)
      + preserve_host_header                                         = false
      + security_groups                                              = (known after apply)
      + subnets                                                      = [
          + "subnet-005e73048a04fbfeb",
          + "subnet-041c80ce8259d9ffc",
        ]
      + tags                                                         = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tags_all                                                     = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + vpc_id                                                       = (known after apply)
      + xff_header_processing_mode                                   = "append"
      + zone_id                                                      = (known after apply)
    }

  # aws_lb_listener.front_end will be created
  + resource "aws_lb_listener" "front_end" {
      + arn               = (known after apply)
      + certificate_arn   = "arn:aws:acm:us-east-1:366951018568:certificate/51cf8fbd-0a32-4c9b-b866-acf1eeb73dcc"
      + id                = (known after apply)
      + load_balancer_arn = (known after apply)
      + port              = 443
      + protocol          = "HTTPS"
      + ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
      + tags_all          = (known after apply)

      + default_action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }
    }

  # aws_lb_target_group.tf_cs_tg will be created
  + resource "aws_lb_target_group" "tf_cs_tg" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = (known after apply)
      + deregistration_delay               = "300"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancer_arns                 = (known after apply)
      + load_balancing_algorithm_type      = (known after apply)
      + load_balancing_anomaly_mitigation  = (known after apply)
      + load_balancing_cross_zone_enabled  = (known after apply)
      + name                               = "tf-case-study-tg"
      + name_prefix                        = (known after apply)
      + port                               = 80
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags                               = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tags_all                           = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + target_type                        = "instance"
      + vpc_id                             = "vpc-0610724ef12184070"
    }

  # aws_lb_target_group_attachment.tf_cs_tg_attchment["0"] will be created
  + resource "aws_lb_target_group_attachment" "tf_cs_tg_attchment" {
      + id               = (known after apply)
      + target_group_arn = (known after apply)
      + target_id        = (known after apply)
    }

  # aws_lb_target_group_attachment.tf_cs_tg_attchment["1"] will be created
  + resource "aws_lb_target_group_attachment" "tf_cs_tg_attchment" {
      + id               = (known after apply)
      + target_group_arn = (known after apply)
      + target_id        = (known after apply)
    }

  # aws_route53_record.example will be created
  + resource "aws_route53_record" "example" {
      + allow_overwrite = (known after apply)
      + fqdn            = (known after apply)
      + id              = (known after apply)
      + name            = "casestudy.subbu98.xyz"
      + type            = "A"
      + zone_id         = "Z0400132321GG1WNTEYB4"

      + alias {
          + evaluate_target_health = true
          + name                   = (known after apply)
          + zone_id                = (known after apply)
        }
    }

  # aws_security_group.allow-http will be created
  + resource "aws_security_group" "allow-http" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = (known after apply)
      + id                     = (known after apply)
      + ingress                = (known after apply)
      + name                   = "case-study-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + tags_all               = {
          + "Environment" = "Prod"
          + "Project"     = "Terraform-Case-Study"
          + "Source"      = "Terraform"
        }
      + vpc_id                 = (known after apply)
    }

  # aws_vpc_security_group_egress_rule.allow_outbound will be created
  + resource "aws_vpc_security_group_egress_rule" "allow_outbound" {
      + arn                    = (known after apply)
      + cidr_ipv4              = "0.0.0.0/0"
      + id                     = (known after apply)
      + ip_protocol            = "-1"
      + security_group_id      = (known after apply)
      + security_group_rule_id = (known after apply)
      + tags_all               = {}
    }

  # aws_vpc_security_group_ingress_rule.allow_http will be created
  + resource "aws_vpc_security_group_ingress_rule" "allow_http" {
      + arn                    = (known after apply)
      + cidr_ipv4              = "0.0.0.0/0"
      + from_port              = 80
      + id                     = (known after apply)
      + ip_protocol            = "tcp"
      + security_group_id      = (known after apply)
      + security_group_rule_id = (known after apply)
      + tags_all               = {}
      + to_port                = 80
    }

  # aws_vpc_security_group_ingress_rule.allow_https will be created
  + resource "aws_vpc_security_group_ingress_rule" "allow_https" {
      + arn                    = (known after apply)
      + cidr_ipv4              = "0.0.0.0/0"
      + from_port              = 443
      + id                     = (known after apply)
      + ip_protocol            = "tcp"
      + security_group_id      = (known after apply)
      + security_group_rule_id = (known after apply)
      + tags_all               = {}
      + to_port                = 443
    }

Plan: 12 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + result = {
      + alb_arn          = (known after apply)
      + alb_dns          = (known after apply)
      + ami-id           = "ami-051f8a213df8bc089"
      + target_group_arn = (known after apply)
      + website_url      = "casestudy.subbu98.xyz"
    }
aws_lb_target_group.tf_cs_tg: Creating...
aws_security_group.allow-http: Creating...
aws_lb_target_group.tf_cs_tg: Creation complete after 4s [id=arn:aws:elasticloadbalancing:us-east-1:366951018568:targetgroup/tf-case-study-tg/8e28bea31a1b3e52]
aws_security_group.allow-http: Creation complete after 4s [id=sg-0b3798a9681ac2d8a]
aws_instance.web_servers[0]: Creating...
aws_vpc_security_group_ingress_rule.allow_https: Creating...
aws_vpc_security_group_ingress_rule.allow_http: Creating...
aws_vpc_security_group_egress_rule.allow_outbound: Creating...
aws_instance.web_servers[1]: Creating...
aws_vpc_security_group_egress_rule.allow_outbound: Creation complete after 2s [id=sgr-0bb14bf2e4857fe62]
aws_vpc_security_group_ingress_rule.allow_http: Creation complete after 2s [id=sgr-095df4cb8056dc3e8]
aws_vpc_security_group_ingress_rule.allow_https: Creation complete after 2s [id=sgr-007794143bd6ea0eb]
aws_instance.web_servers[0]: Still creating... [10s elapsed]
aws_instance.web_servers[1]: Still creating... [10s elapsed]
aws_instance.web_servers[0]: Still creating... [20s elapsed]
aws_instance.web_servers[1]: Still creating... [20s elapsed]
aws_instance.web_servers[0]: Creation complete after 25s [id=i-041711d6f224fbdad]
aws_instance.web_servers[1]: Still creating... [30s elapsed]
aws_instance.web_servers[1]: Creation complete after 37s [id=i-0da83c93cdc173f7c]
aws_lb_target_group_attachment.tf_cs_tg_attchment["0"]: Creating...
aws_lb_target_group_attachment.tf_cs_tg_attchment["1"]: Creating...
aws_lb_target_group_attachment.tf_cs_tg_attchment["0"]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:366951018568:targetgroup/tf-case-study-tg/8e28bea31a1b3e52-20240405121622039300000003]
aws_lb_target_group_attachment.tf_cs_tg_attchment["1"]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:366951018568:targetgroup/tf-case-study-tg/8e28bea31a1b3e52-20240405121622436100000004]
aws_lb.tf_cs_alb: Creating...
aws_lb.tf_cs_alb: Still creating... [10s elapsed]
aws_lb.tf_cs_alb: Still creating... [20s elapsed]
aws_lb.tf_cs_alb: Still creating... [30s elapsed]
aws_lb.tf_cs_alb: Still creating... [40s elapsed]
aws_lb.tf_cs_alb: Still creating... [50s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m0s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m10s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m20s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m30s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m40s elapsed]
aws_lb.tf_cs_alb: Still creating... [1m50s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m0s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m10s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m20s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m30s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m40s elapsed]
aws_lb.tf_cs_alb: Still creating... [2m50s elapsed]
aws_lb.tf_cs_alb: Creation complete after 2m57s [id=arn:aws:elasticloadbalancing:us-east-1:366951018568:loadbalancer/app/tf-case-study-proj-alb/313fb8a607e809c3]
aws_route53_record.example: Creating...
aws_lb_listener.front_end: Creating...
aws_lb_listener.front_end: Creation complete after 2s [id=arn:aws:elasticloadbalancing:us-east-1:366951018568:listener/app/tf-case-study-proj-alb/313fb8a607e809c3/ffb5b6a7da712619]
aws_route53_record.example: Still creating... [10s elapsed]
aws_route53_record.example: Still creating... [20s elapsed]
aws_route53_record.example: Still creating... [30s elapsed]
aws_route53_record.example: Still creating... [40s elapsed]
aws_route53_record.example: Still creating... [50s elapsed]
aws_route53_record.example: Creation complete after 1m0s [id=Z0400132321GG1WNTEYB4_casestudy.subbu98.xyz_A]

Apply complete! Resources: 12 added, 0 changed, 0 destroyed.

Outputs:

result = {
  "alb_arn" = "arn:aws:elasticloadbalancing:us-east-1:366951018568:loadbalancer/app/tf-case-study-proj-alb/313fb8a607e809c3"
  "alb_dns" = "tf-case-study-proj-alb-1870405481.us-east-1.elb.amazonaws.com"
  "ami-id" = "ami-051f8a213df8bc089"
  "target_group_arn" = "arn:aws:elasticloadbalancing:us-east-1:366951018568:targetgroup/tf-case-study-tg/8e28bea31a1b3e52"
  "website_url" = "casestudy.deepika.xyz"
}
