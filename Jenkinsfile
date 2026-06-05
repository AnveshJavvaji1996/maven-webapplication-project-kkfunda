@Library('Sharedlibs') _

pipeline {
    agent any

    tools {
        maven 'Maven_3.9.16'
    }

    stages {
        stage('CI/CD Pipeline') {
            steps {
                mavenPipeline()
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
