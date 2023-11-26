resource "aws_key_pair" "helloworld" {
  key_name   = "helloworldkeys"
  #public_key = "<helloworldkeys.pem.pub> key content"
  public_key = file("helloworldkeys.pem.pub)
}

resource "aws_instance" "web1" {
  ami           = "ami-05a5f6298acdb05b6"
  instance_type = "t2.micro"
  key_name = "helloworldkeys"
  depends_on = [aws_key_pair.helloworld]

  tags = {
    Name = "HelloWorld"
  }
}