pipeline {
  environment {
  VERSION = readMavenPom().getVersion()
  }
  agent any
  stages {
    stage('') {
      steps {
        sh 'echo "start"'
        sh 'echo "$VERSION1"'
      }
    }

  }
}