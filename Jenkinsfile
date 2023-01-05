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
                sh 'docker run -d --name=deploy-hello-world-2 -p 8192:8191 test-hello-world'
            }
        }

        stage('Docker clean') {
            steps {
                catchError(buildResult: 'SUCCESS', stageResult: 'SUCCESS') {
                    sh 'docker stop deploy-hello-world'
                    sh 'docker rm deploy-hello-world'
                    sh 'docker rename deploy-hello-world-2 deploy-hello-world'
                }
                
            }
        }
    }
}