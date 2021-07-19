node {
    stage('Build') {
        echo 'checkout code...'
        checkout scm
    }
  stage ('Build Jar') {
            sh "mvn clean install"
      sh "docker build -t testpipeline ."

      sh "docker run -d -p 8082:8082 --name javacontainer testpipeline"
    } 
}
