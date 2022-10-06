pipeline {
    agent any

    stages {
        stage('unit-tests') {
            steps {
                sh 'make unit-tests..'
            }
        }
        stage('build-image') {
            steps {
                sh 'make build-image'
            }
        }
        stage('push') {
            steps {
                sh 'make push'
            }
        }
    }
}