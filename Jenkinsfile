pipeline {
    agent any

    stages {
        stage('Checkout') {
           steps {
                // Checkout your Git repository containing Terraform code
                script {
                    def gitUrl = 'https://github.com/Ameena-Begam/Terraform.git'
                    def gitBranch = 'main'
                    def gitCredentialsId = 'Git Credentials' // Optional, if using credentials

                    checkout([$class: 'GitSCM', branches: [[name: gitBranch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CloneOption', noTags: false, reference: '', shallow: true, timeout: 10]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: gitCredentialsId, url: gitUrl]]])
                }
        }

        stage('Terraform Init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Generate Terraform plan
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                // Apply Terraform changes
                sh 'terraform apply -auto-approve tfplan'
            }
        }

        stage('Terraform Destroy') {
            steps {
                // Destroy resources if needed (optional)
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
