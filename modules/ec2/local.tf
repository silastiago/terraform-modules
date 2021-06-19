resource "null_resource" "web" {
  # ...

  triggers = {
    cluster_instance_ids = "${join(",", local_file.AnsibleInventory.*.id)}"
  }

  provisioner "local-exec" {
    command = "sleep 20;ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i ansible/inventory ansible/playbook.yml"
  }
}