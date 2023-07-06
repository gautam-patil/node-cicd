pipeline {
  agent none

  tools {nodejs "node"}
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/gautam-patil/node-cicd', branch: 'main')
      }
    }

  }
}
