pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-jenkins-demo',
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                       sh "aws ec2 describe-security-groups --region=us-east-2"
                        }
            }
        }
        stage('terraform-init') {
            steps {
                sh "terraform init"
            }
        }
        stage('terraform-validate') {
            steps {
                sh "terraform validate"
            }
        }
    }    
}