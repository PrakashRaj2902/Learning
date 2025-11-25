variable "ami_id" {
    description = "AMI_ID"
    default = "ami-38r382323"
}

variable "instance_type" {
    description = "Instance type"
    type = String
    default = "t3.micra"
}