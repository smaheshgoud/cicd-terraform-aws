resource "aws_instance" "main_instance1" {
    ami               = "ami-04cb4ca688797756f"
    instance_type     = "t2.micro"
    availability_zone = "us-east-1a"
    key_name          =  "newkey"

    tags = {
        Name = "main_instance1"
    }  
}
