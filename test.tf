############################
# do configure aws


provider "aws"    {
region  =  "ap_south-1"




}




resource "aws_instance"  "server"  {
   count =  1   #  create fur similar EC2 instances
    ami    = "ami-076e3a557efe1aa9c"
    instance_type ="t2.micro"
    key_name = "task"
     tags =  {
     Name  =  "Server $ {count.index}"

        }
   }

