def DOCKERIMAGENAME

pipeline {
    agent any

    stages {
        stage('test'){
            steps {
                sh 'make test'
            }
        }
        stage('docker-build') {    
            steps {
                sh 'make build'
            }
        }
        stage('push'){
            steps {
                sh 'make push' 
            }
        }
    }
}