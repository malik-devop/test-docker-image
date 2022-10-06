/* Auteur: Jospin Anogo  email: anogoj@gmail.com 
prérequis: 
- configurer une variable "DOCKER_PASSWORD" dans les paramêtres du serveur jenkins
*/
def DOCKER_ID = "malikdevops"
def IMAGE_NAME = "test-docker-image"
def IMAGE_TAG_DEV = DOCKER_ID+"/"+IMAGE_NAME+":v1.0.1"
def credential = "malikdevops"
pipeline{
    agent any
  stages{
    stage('Build Docker Image'){
        steps{
            script{         
              docker.build(IMAGE_TAG_DEV, '.')
            }
          }         
    } 
    stage('Test'){
        steps{
            script{
              'echo "Test réussi !"'
            }
          }         
    } 
    stage('Push Image sur Dockerhub'){
        steps{
            script{
                docker.withRegistry("", credential){
                     docker.image(IMAGE_TAG_DEV).push()
                    }   
            }
        }
    }
    }
  }
