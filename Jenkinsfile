pipeline {
  environment {
    pom = readMavenPom file: 'pom.xml'
    VERSION = pom.version
  }
  agent any
  stages {
    stage('') {
      steps {
        sh 'echo "start"'
        sh 'echo "$VERSION"'
      }
    }

  }
}