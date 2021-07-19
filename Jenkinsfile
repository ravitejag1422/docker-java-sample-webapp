pipeline {
    agent any
    stage('Build') {
        echo 'checkout code...'
        checkout scm
    }
    stages {
        stage('Package') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

    }
}
