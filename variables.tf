variable "ami_id" {
  description = "The ID of the AMI to run in the cluster. This should be an AMI built from the Packer template under ami/nomad-consul.json. If no AMI is specified, the template will 'just work' by using the example public AMIs. WARNING! Do not use the example AMIs in a production setting!"
  default = "ami-afd228d2" # ubuntu16-ami
  #default = "ami-10ca306d" # amazon-linux-ami
}

variable "aws_region" {
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Domain under which all services should reside."
  default     = "service.consul"
}

variable "cluster_name" {
  description = "What to name the cluster and all of its associated resources"
  default     = "koralamode"
}

variable "nomad_instance_type" {
   description = "What kind of instance type to use for the nomad servers"
   default     = "t2.nano"
}

variable "vault_instance_type" {
   description = "What kind of instance type to use for the nomad servers"
   default     = "t2.nano"
}

variable "client_instance_type" {
   description = "What kind of instance type to use for the nomad clients"
   default     = "t2.small"
}

variable "num_vault_servers" {
  description = "The number of server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 2
}

variable "num_nomad_servers" {
  description = "The number of server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 3
}

variable "num_clients_min" {
  description = "The minimum number of client nodes to deploy."
  default     = 1
}

variable "num_clients_max" {
  description = "The maximum number of client nodes to deploy."
  default     = 6
}

variable "cluster_tag_key" {
  description = "The tag the EC2 Instances will look for to automatically discover each other and form a cluster."
  default     = "nomad-servers"
}

variable "ssh_key_name" {
  description = "The name of an EC2 Key Pair that can be used to SSH to the EC2 Instances in this cluster. Set to an empty string to not associate a Key Pair."
  default     = "coollyninja"
}
