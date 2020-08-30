pipeline {
    agent any
    stages {
        stage("Build") {
            steps {
                sh "bash ./scripts/build.sh"
            }
        }

        stage("Test") {
            steps {
                sh "bash ./scripts/test.sh"
            }
        }

        stage("Deploy") {
            steps {
                sh "bash ./scripts/deploy.sh"
            }
        }
    }
}
