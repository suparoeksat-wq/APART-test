pipeline {
    agent any

    stages {

        stage('Run Robot Test') {
            steps {
                sh 'pip install robotframework'
                sh 'robot automate.robot'
            }
        }

        stage('Run API Test') {
            steps {
                sh 'npm install -g newman'
                sh 'newman run api.postman.json'
            }
        }

        stage('Finish') {
            steps {
                echo 'All tests executed'
            }
        }
    }
}