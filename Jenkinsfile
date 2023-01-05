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

        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
    }
}