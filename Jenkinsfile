pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bash 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                bash 'mvn clean test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}