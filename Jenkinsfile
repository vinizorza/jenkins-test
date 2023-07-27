pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Create docker image') {
            steps {
                sh 'docker build -t app-test .'
            }
        }
        stage('Run docker container') {
            steps {
                sh 'docker stop app-test'
                sh 'docker run -d -p 8081:8081 app-test --name app-test'
            }
        }
    }
}