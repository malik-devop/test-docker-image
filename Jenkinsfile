pipeline {
  // agent {
  //   docker { image 'node:14.15' }
  // }
      stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
  // stages {
  //   stage('Install') {
  //   docker.image('node:14.15').pull()
  //   docker.image('malikdevops/test-docker-image').pull()
  //     steps { sh 'npm install' }
  //   }

  //   stage('Test') {
  //       stage('Static code analysis') {
  //           steps { sh 'npm run-script lint' }
  //       }
  //       stage('Unit tests') {
  //           steps { sh 'npm run-script test' }
  //       }
  //   }

  //   stage('Build') {
  //     docker.image('node:14.15').inside {
  //       sh label:
  //         'Running npm run build',
  //       script: '''
  //         node --version
  //         cd hello-world-node
  //         npm run build
  //       '''
  //     }
  //   }
  // }
//   stage("Deploy") {
//     def containerName = "testdockerimage"
//     // Any change in Volume will automatically result in Hot Reload of Nginx
//     def rc = sh (script: "docker inspect -f '{{.State.Running}}' ${containerName}", returnStatus: true)
//     if(rc == 0) {
//       echo "Container ${containerName} exists..."
//       try {
//         echo "Nginx will reload changes from the mounted file system..."
//         timeout(time: 120, unit: 'SECONDS') { // change to a convenient timeout for you
//           input(
//             message: 'Click "Create" to Discard old container and create a new one?\nClick "Abort" to keep the old one\nIf nothing is clicked "Abort" will be triggered', ok: 'Create')
//           }
//           echo "Removing old container and creating a new one..."
//           sh "docker rm -f hello-nginx"
//           sh "docker run -d -p 5000:80 -v $WORKSPACE/hello-world-node/dist/hello-world-node:/usr/share/nginx/html/ --name ${containerName} nginx"

//       }
//       catch(err) { // timeout reached or input false
//         echo "Doing Nothing!"
//       }
//     }
//     else
//     {
//       echo "Container ${containerName} does not exist... Creating..."
//       sh "docker run -d -p 5000:80 -v $WORKSPACE/hello-world-node/dist/hello-world-node:/usr/share/nginx/html/ --name ${containerName} nginx"
//     }
//   }
}


