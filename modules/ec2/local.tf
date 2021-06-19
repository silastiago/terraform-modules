resource "null_resource" "web" {
  # ...

  triggers = {
    cluster_instance_ids = "${join(",", local_file.AnsibleInventory.*.id)}"
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i ansible/inventario ansible/playbook.yml"
  }
}