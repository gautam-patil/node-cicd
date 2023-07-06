pipeline {
  agent any

  tools { nodejs "nodejs}
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
            sh 'ls'
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
}
