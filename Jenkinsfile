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
  
    stage('docker_build') {
      steps {
      	sh 'cd $HOME/workspace/Spring_Keti_master/config '
        sh 'sudo docker build --build-arg IMAGE_ARG=$ARTIFACT$VERSION -t diqmwl/keti_spring:2.0 .'
      }
    }
    
  }
}