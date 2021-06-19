### The Ansible inventory file
resource "local_file" "AnsibleInventory" {
 content = templatefile("ansible/inventory.tmpl",
 {
  app-dns = aws_instance.app.*.public_dns
 }
 )
 filename = "ansible/inventory"
}
