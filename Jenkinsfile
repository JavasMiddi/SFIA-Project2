pipeline {
    agent any
    stages {
        stage("Test") {
            steps {
                sh "bash ./scripts/test.sh"
            }
        }
        
        stage("Build") {
            steps {
                sh "bash ./scripts/build.sh"
            }
        }

         stage("Deploy") {
            steps {
                sh "bash ./scripts/deploy.sh"
            }
        }
    }
}
