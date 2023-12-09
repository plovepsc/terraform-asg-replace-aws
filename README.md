# terraform-asg-replace-aws
# first off create main.tf
# import existing resoruce 
$ terraform init
$ terraform import aws_autoscaling_group.example yourasgname or ID
$ terraform plan
$ terraform apply
