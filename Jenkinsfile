pipeline {
    agent { label 'master' }
      stages {
        stage("Clone Code") {
            steps {
                script {
                checkout scm
                }
            }
        }
        stage('Building Image') {
            steps{
                script {
                  sh "docker build -t dana2cr/landingpagejenkinss:${BUILD_NUMBER} ."
                }
            }
        }
     }
   }
