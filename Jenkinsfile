@Library('Sharedlibs') _  // Load the shared library from GitHub
pipeline {
    agent any

    tools {
        maven 'Maven_3.9.16'
    }

    stages {

        stage('Git Checkout') {
            steps {
                git 'https://github.com/AnveshJavvaji1996/maven-webapplication-project-kkfunda.git'
            }
        }

         stage('Deploy to Tomcat') {
            steps {
                echo 'Deploying WAR file using curl...'

                sh '''
                    curl -u anvesh:12345 \
                    --upload-file target/maven-web-application.war \
                    "http://13.206.101.76:8080/manager/text/deploy?path=/maven-web-application&update=true"
                '''
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
