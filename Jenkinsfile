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

        stage('Build Docker Image') {
          steps {
            sh 'docker build -t node-cicd .'
          }
        }

        stage('Run Docker') {
          steps {
            sh 'docker run -d -p 3000:3000 node-cicd'
          }
        }

      }
    }

  }
  tools {
    nodejs '16.13.2'
  }
}
