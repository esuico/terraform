# Configure AWS Provider
provider "aws" {
	access_key = "AKIAIK3QAHM6NWELBNQA"
	secret_key = "iJ9Vb/s2TeW9QkhGa5XGOyQTLAG09uQFifDR2cVo"
	region = "us-east-1"
}

# Create a server
resource "aws_instance" "example" {
	ami = "ami-2d39803a"
	instance_type = "t2.micro"
	
	tags {
		Name = "terraform-example"
	}
}