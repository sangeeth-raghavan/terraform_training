resource "null_resource" "destroy_time" {
  provisioner "local-exec" {
    when    = destroy
    command = "echo terraform destroy completed > destroyed.txt"
  }
}
