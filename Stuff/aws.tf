# Terrafroms true pwoer comes with the ability o work with multiple providers and manage those resources with a singular language
#  Create a provider block for the AWS provider 

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_ecs_cluster" "jrice_dev" {
  name = "jrice-dev"
}

resource "aws_key_pair" "deployer" {
  key_name   = "jrice-app-deploy-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCvOLoNG7t1YG7fhNk1FmHIJStLyJrlCiyXulRWsQNgkMXdRrvSC+mUcfrqF5+EZXjlmXePy3phYDa6VgPqSw5ZJba4o0YzYqVozdQk4nxBfEF4VW5k1uLu6A4ky7vw3fzTx/ASCfRynC7lanqzls0toXlCLOeBUjXmpN8DjtrQi/K44i99XAL0DPQi7TH0g8DNBl+eL9wZOS7wdY1L97WJKAT3ORl6kwGEl0cKjh52F1N5RPypHwFD1zGfrVq1vuOQm7oJRIfbUTqQJQ4OhOUMerhcVT7/vaqVoxhO+I20q9eIddrM/E8kgM8v9rJ6X6fKBcvLuk5dJ6KnnPpY0CI3pKL3UnwiOnLCeLtkXHtl0z3ceJV12mToFHUtz/vYxIjIsqRxm7e4Y4DaWc3k8q9VDDYfnE1rGjKgJk0H6dLYGzBqaJa0HqVRNHDB6XF/KXCxd4uhA+f8A3fu+IbEG/mm6gmNCX/4Il4XQ3Mlki18KPjxo0k8TuX/45LqbwBPi0/mFK9pDWBb1d+SYNGN/ru3Hbh01NiRqGLvAKw7k9r/ZUj1l7TWK44zF8tiasR1Or79jAsouvuPi2+OxZ9aZg0uQvrf7dVc1vJ8QN07NZRPI9Rtj8aSm4QH9+GSlo+Z2FumAoLEeED2M15SgIuTTaheHXrbWzf0PbYzOfUN6xpALw== jsrice7391@gmail.com"
}

module "vpc_example_simple-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/simple-vpc"
  version = "2.66.0"

}
