pipeline {
    agent any
    stages {
        stage("Unit-test") {
            steps {
                echo "On a pas encore fait les tests unitaires"
            }
        }
        
        stage("Build docker image") {
            steps {
                echo "Execution en cours"
                sh "docker build -t testdockerimage ."
                script {
                    try{
                        sh "docker rm -f testdockerimage"
                    }catch (exc) {
                        echo "Echec de la suppression de l'image"
                    }
                }
                sh "docker run --name testdockerimage -d -p 5000:80 malikdevops/test-docker-image:v1.0.${BUILD_NUMBER}"

            }
        }
        stage("Push docker image") {
            steps {
                echo "Push de l'image dans notre registry docker hub"
                withCredentials([usernamePassword(credentialsId : "dockerhub",passwordVariable : "DOCKER_PASSWORD" ,usernameVariable: "DOCKER_USERNAME")]){
                    sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    sh "docker push malikdevops/test-docker-image:v1.0.${BUILD_NUMBER}"
                }
            }
        }
    }
}