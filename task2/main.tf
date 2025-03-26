provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y software-properties-common
              apt-add-repository --yes --update ppa:ansible/ansible
              apt-get install -y ansible git

              # Clone and run ansible playbook
              git clone https://github.com/your-org/sample-ansible-playbook.git /opt/playbook
              cd /opt/playbook
              ansible-playbook -i localhost, playbook.yml --connection=local
              EOF

  tags = {
    Name = "UbuntuWithAnsible"
  }
}
