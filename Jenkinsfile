pipeline {
    agent any
    stages {
        stage ('Clone') {
            steps {
                git branch: 'master', url: "https://github.com/ravitejag1422/docker-java-sample-webapp.git"
            }
        }
    }
    stages {
        stage('Package') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }

    }
}
