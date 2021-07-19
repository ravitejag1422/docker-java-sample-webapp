node {
    stage('Build') {
        echo 'checkout code...'
        checkout scm
    }
  stage ('Build Jar') {
            sh "mvn clean install"
      sh "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 161761483506.dkr.ecr.us-east-1.amazonaws.com"
      sh "docker build -t testingimages ."
      sh "docker tag testingimages:latest 161761483506.dkr.ecr.us-east-1.amazonaws.com/testingimages:latest"
      sh "docker push 161761483506.dkr.ecr.us-east-1.amazonaws.com/testingimages:latest"
      sh "docker stop javacontainer"
      sh "docker rm javacontainer"
      sh "docker run -d -p 8082:8082 --name javacontainer testingimages:latest 161761483506.dkr.ecr.us-east-1.amazonaws.com/testingimages:latest"
    } 
}
