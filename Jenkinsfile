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

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Report') {
            steps {
                sh 'mvn sonar:sonar'
            }
        }

        stage('Upload to Nexus Repository') {
            steps {
                sh 'mvn deploy'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                echo 'Deploying WAR file using curl...'

                sh '''
                    curl -u anvesh:12345 \
                    --upload-file target/maven-web-application.war \
                    "http://13.233.48.76:8080/manager/text/deploy?path=/maven-web-application&update=true"
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
