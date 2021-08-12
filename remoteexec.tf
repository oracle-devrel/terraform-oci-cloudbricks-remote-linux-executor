# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# remoteexec.tf
#
# Purpose: Receives a script and execute it with parameters if there is any

resource "null_resource" "remote_executor" {
  
  connection {
    type        = "ssh"
    host        = var.linux_compute_private_ip
    user        = "opc"
    private_key = var.ssh_private_is_path ? file(var.ssh_private_key) : var.ssh_private_key
  }

   provisioner "file" {
        source      = "${var.script_name}"
        destination =  "${local.tmp_path}${local.script_name_only}"
   }

   provisioner "remote-exec" {
        inline = [
        "${local.chmod_update} ${local.tmp_path}${local.script_name_only}",
        "${local.tmp_path}${local.script_name_only} ${var.script_args}",
        ]
    }

}