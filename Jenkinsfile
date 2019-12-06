pipeline {
    agent {
        docker {
            image 'terraform-build:latest'
        }
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
