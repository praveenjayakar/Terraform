variable "linode_api_token" {
  description = "Linode API token"
  type        = string
  default     = "yourtoken"
}


variable "instance_label" {
  description = "Label for the Linode instance"
  default     = "tf-instance"
}

variable "instance_region" {
  description = "Region for the Linode instance"
  default     = "ap-west"
}

variable "instance_type" {
  description = "Linode instance type"
  default     = "g6-standard-4"
}

variable "instance_image" {
  description = "Linode instance image"
  default     = "linode/ubuntu20.04"
}

variable "instance_root_pass" {
  description = "Root password for the Linode instance"
  type        = string
  default     = "yourpassword"
}

variable "ssh_user" {
  description = "SSH user for connecting to the Linode instance"
  default     = "root"
}

variable "provisioning_script" {
  description = "Path to the provisioning script"
  default     = "kubeadm.sh"
}

