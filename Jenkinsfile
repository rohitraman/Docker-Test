pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               sh 'mvn clean package -DskipTests=True'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Docker clean') {
            steps {
                sh 'docker stop deploy-hello-world'
                sh 'docker rm deploy-hello-world'
            }
        }
        stage('Docker build') {
            steps {
                sh 'docker build -t test-hello-world .'
            }
        }
        stage('Docker run') {
            steps {
                sh 'docker run -d --name=deploy-hello-world -p 8192:8191 test-hello-world'
            }
        }
    }
}