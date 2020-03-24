pipeline {
  agent any
  stages {
    stage('build_start') {
      steps {
        sh 'echo "start"'
        sh 'echo "$VERSION"'
      }
    }

  }
  environment {
    VERSION = readMavenPom().getVersion()
  }
}