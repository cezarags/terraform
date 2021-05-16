provider "aws"{             //provedor utilizado
    
    region = "us-east-2"   // Região das instãncias
}


resource "postgresql_database" "my_db" {
  engineversion     = "10.3"
  name              = "my_db"
  owner             = "my_role"
  template          = "template0"
  lc_collate        = "C"
  connection_limit  = -1
  allow_connections = true
  provider = provider[registry.terraform.io/hashicorp/postgresql]

}