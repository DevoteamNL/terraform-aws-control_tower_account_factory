# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.12.0"
  # Required Vars
  ct_management_account_id    = "316689970579"
  log_archive_account_id      = "903296247028"
  audit_account_id            = "764660151821"
  aft_management_account_id   = "891377100111"
  ct_home_region              = "eu-west-1"
  tf_backend_secondary_region = "eu-central-1"
  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "DevoteamNL/aft-account-request"
  global_customizations_repo_name               = "DevoteamNL/aft-global-customizations"
  account_customizations_repo_name              = "DevoteamNL/aft-account-customizations"
  account_provisioning_customizations_repo_name = "DevoteamNL/aft-provisioning-customizations"

  aft_enable_vpc = false
}

