variable "is_create_vpc" {
  type    = bool
  default = true

}

resource "aws_vpc" "main" {
  count = var.is_create_vpc ? 1 : 0 # it means if var.is_create_vpc is true the it will pass 1 and 1 vpc will create
  // if var.is_create_vpc is false then it will print 0 then no resource will crete
  cidr_block = "192.168.0.0/24"

}