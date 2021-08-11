# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# variables.tf
#
# Purpose: Variables used in this brick

/********** Brick Variables **********/
/********** Executor Variables **********/
variable "linux_compute_private_ip" {
    description = "Private IP of Compute"  
}

variable "script_name" {
    description = "Name of .sh script"
    default = "script.sh"  
}

variable "script_args" {
    description = "Arguments that are passed on to the script"
    default = null  
}

/********** Executor Variables **********/

/********** SSH Key Variables **********/
variable "ssh_public_is_path" {
  description = "Describes if SSH Public Key is located on file or inside code"
  default     = false
}

variable "ssh_private_is_path" {
  description = "Describes if SSH Private Key is located on file or inside code"
  default     = false
}

variable "ssh_public_key" {
  description = "Defines SSH Public Key to be used in order to remotely connect to compute instance"
  type        = string

}

variable "ssh_private_key" {
  description = "Private key to log into machine"

}
/********** SSH Key Variables **********/
/********** Brick Variables **********/