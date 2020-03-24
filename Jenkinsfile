pipeline {
  environment {
    pom = readMavenPom file: 'pom.xml'
    VERSION1 = pom.version
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