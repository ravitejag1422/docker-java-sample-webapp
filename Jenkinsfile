node {
    stage('Build') {
        echo 'checkout code...'
        checkout scm
    }
  stage ('Build Jar') {
            sh "mvn clean install"
      sh "docker build -t testpipeline ."
    } 
}
