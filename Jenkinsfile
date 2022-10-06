def DOCKERIMAGENAME
def REPOSITORY = "test-docker-image"
def ORGANIZATION = "malikdevops"
def TAG = "v1.0.1"
def IMAGE_TAG = ORGANIZATION+"/"+REPOSITORY+":"+TAG
def credential = "testdockerimage"

pipeline {
    agent any

    stages {
        stage('test'){
            steps {
            echo 'make test'

            }
        }
        stage('docker build') {    
            steps {
                script {
                    docker.build(IMAGE_TAG, ".")
                }
            }
        }
        stage('push'){
            steps {
                script {
                    docker.withRegistry("",credential){
                        docker.image(IMAGE_TAG).push()
                    }
                }
            }
        }
    }
}