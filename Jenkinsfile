pipeline {
    agent {
        docker {
            image 'terraform-build:latest'
        }
    }
    environment {
        AWS_ACCESS_KEY_ID       = credentials('jenkins-aws-access-key-id')
        AWS_SECRET_ACCESS_KEY   = credentials('jenkins-aws-secret-access-key')
    }
    stages {
        stage ('Initialize Backend') {
            steps {
                sh 'terraform init -backend=false'
            }
        }
        stage ('Validate Configuration') {
            steps {
                sh 'terraform validate -no-color'
            }
        }
    }
}
