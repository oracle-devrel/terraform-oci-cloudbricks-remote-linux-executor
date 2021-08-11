# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# datasource.tf
#
# Purpose: The following script defines the lookup logic used in code to obtain pre-created or JIT-created resources in tenancy. It also contains aliases for local command execution

locals {
 
  chmod_update = "sudo chmod +x"
  tmp_path = "/tmp/"
  script_name_only = trimprefix(var.script_name, "./scripts/")
}