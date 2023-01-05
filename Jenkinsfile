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

        stage('Docker build') {
            steps {
                sh 'docker build -t test-hello-world .'
            }
        }
        stage('Docker run') {
            steps {
                sh 'docker run -d -p 8191:8191 test-hello-world'
            }
        }
    }
}