pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/gautam-patil/node-cicd', branch: 'main')
      }
    }

    stage('List content') {
      parallel {
        stage('List content') {
          steps {
            sh 'node --version'
          }
        }

        stage('NPM I') {
          steps {
            sh 'npm i'
          }
        }

      }
    }

  }
  tools {
    nodejs '16.13.2'
  }
  post {
        always {
            script {
                // Run shell script
                sh 'node index.js'
                echo "This is a shell script"
            }
        }
    }
}
