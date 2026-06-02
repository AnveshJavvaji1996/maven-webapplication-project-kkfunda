pipeline {
    agent any

    tools {
        maven 'Maven_3.9.16'
    }

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/AnveshJavvaji1996/spring-boot-thymeleaf.git'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

       stage('SonarQube Analysis') {
    steps {
        withCredentials([string(
            credentialsId: 'sonar-token',
            variable: 'SONAR_TOKEN'
        )]) {
            sh '''
                mvn sonar:sonar \
                  -Dsonar.projectKey=spring-boot-thymeleaf \
                  -Dsonar.host.url=http://3.110.155.109:9000 \
                  -Dsonar.token=$SONAR_TOKEN
            '''
        }
    }
}
        stage('Deploy to Nexus') {
            steps {
                sh 'mvn deploy'
            }
        }
        stage('Deploy to Tomcat') {
    steps {
        sh """
            curl -u anvesh:12345 \
            --upload-file target/spring-boot-thymeleaf.war \
            "http://13.206.101.201:8080/manager/text/deploy?path=/spring-boot-thymeleaf&update=true"
        """
    }
}

    }
}
