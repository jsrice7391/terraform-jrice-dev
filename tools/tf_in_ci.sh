
#!/bin/bash


if [[ $CIRCLE_BRANCH == "main" ]]; then
    cd Heroku
    terraform init
    terraform apply -auto-approve
    cd ..
    cd AWS
    terraform init
    terraform apply -auto-approve
    cd ..
else
    cd Heroku
    terraform init
    terraform plan
    cd ..
    cd AWS
    terraform init
    terraform apply -auto-approve
    cd ..
fi