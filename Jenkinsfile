pipeline {
    agent any
    stages {
        stage('get repo') {
            steps {
                sh './scripts/get-repo.sh'
            }
        }
        stage('docker installs') {
            steps {
                sh './scripts/docker-installs.sh'
            }
        }
        stage('deploy') {
            steps {
                sh './scripts/deploy.sh'
            }
        }
    }
}    
