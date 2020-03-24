pipeline {
  environment {
  ARTIFACT = readMavenPom().getArtifactId()
  VERSION = readMavenPom().getVersion()
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