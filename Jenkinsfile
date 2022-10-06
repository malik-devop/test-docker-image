def DOCKERIMAGENAME

pipeline {
    agent any
    environment {
        dockerhub=credentials("dockerhub")
    }
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
                sh 'docker tag testdockerimage malikdevops/test-docker-image:1.0.1'
                sh 'echo $dockerhub_PSX | docker login -u $dockerhub_USR --password-stdin'
                sh 'docker push malikdevops/test-docker-image:1.0.1' 
            }
        }
    }
}