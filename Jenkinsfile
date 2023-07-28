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
                sh 'if [ "$( docker container inspect -f '{{.State.Running}}' app-test )" == "true" ]
                    then
                    	echo "docker stop app-test"
                    else
                    	echo "docker run -d -p 8081:8081 app-test --name app-test"
                    fi'
            }
        }
    }
}