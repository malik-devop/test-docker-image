
def DOCKER_ID = "malikdevops"
def IMAGE_NAME = "test-docker-image"
def IMAGE_TAG_DEV = DOCKER_ID+"/"+IMAGE_NAME+":v1.0.1"
def credential = "malikdevops"
pipeline{
    agent any
  stages{
    stage('Test'){
        steps{
            script{
              'echo "Test réussi !"'
            }
          }         
    } 
    stage('Build Docker Image'){
        steps{
            script{         
              docker.build(IMAGE_TAG_DEV, '.')
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
