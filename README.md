
1. Клонуємо репо

2. Встановлюємо тераформ. Для референсу, гайд для інсталяції(виберіть вашу ОС): https://www.terraform.io/downloads

4. Можна зробити файл `terraform.tfvars` з усіма варіаблами, шоб не вводити кожного разу. Прикладу вмісту файлу `terraform.tfvars`:
  

`region = "eu-west-1"`
`ec2_ins_type = "t2.micro"`
`ec2_ins_num = "20"`
`ssh_rsa_pubkey = "XXX"`
`aws_access_key = "XXX"`
`aws_secret_key = "XXX"`


5. Для запустку тераформу, треба у тій же директорії де тераформ вайли, `terraform apply --var-file terraform.tfvars` Якщо не використовується файл зі змінними то достатньо `terraform apply`

6. Для стопу цього всього діла - `terraform destroy`

7. Для зміни регіону, збільшення/зменшення кількості інстансів - редагуємо відповідні змінні і робимо `terraform apply`

8. Для зміни об'єкту редагуємо відповідну команду в `startup.sh` і повторюємо `terraform apply`
