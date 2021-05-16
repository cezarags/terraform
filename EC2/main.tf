provider "aws"{             //provedor utilizado
    version = "~> 2.5"        
    region = "us-east-2"   // Região das instãncias
}


resource "aws_instance" "dev"{

    count = 3               // irá criar 3 instancias
    ami = "ami-08962a4068733a2b6"           //ami da instância
    instance_type= "t2.micro"             //tipo da instância
    key_name= "terraform-aws"          //nome
    tags = {
        Name = "dev${count.index}"   //conta a partir do primeiro indice, pega o nome + interpolação
    }

    vpc_security_group_ids = ["sg-081b4e3d07bcd5be2"]
}





//Grupo de segurança

resource "aws_security_group" "acess-ssh" {
  # ... other configuration ...
  name = "acess-ssh"
  description = "acess-ssh"

  ingress {
    from_port       = 22      //porta que será feito o acesso ssh nesse caso
    to_port         = 22
    protocol        = "tcp"   //tipo tcp
    
    cidr_blocks = ["187.21.82.155/32"]   //ip externo autorizado
  }

  tags = {
      Name = "ssh"     
  }
}





