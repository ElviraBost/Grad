resource "aws_vpc" "MyVPC" {
    cidr_block           = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags {
        Name        = "TF:VPC",
        Owner       = "owner@example.com",
        Environment = "Production",
        Description = "Custom VPC"
    }
}
#В cidr_block мы указываем переменную из variables.tf vpc_cidr. Ну и тэги - очень удобный инструмент для работы и выборки через АПИ нужных ресурсов.