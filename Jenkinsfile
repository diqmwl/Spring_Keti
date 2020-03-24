pipeline {
  environment {
  ARTIFACT = readMavenPom().getArtifactId()
  VERSION = readMavenPom().getVersion()
  }
  agent any
  stages {
    stage('build_start') {
      steps {
        sh 'echo "start"'
        sh 'echo "$VERSION"'
      }
    }

  }
}