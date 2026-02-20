pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Shafi23/Simple-CICD.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
