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
        sh 'mvn clean'
        sh 'mvn install'
      }
    }
  
    stage('docker_build') {
      steps {
		dir("config") {
	    	sh 'sudo cp $HOME/workspace/Spring_Keti_master/target/$ARTIFACT-$VERSION.war ./'
    		sh 'sudo docker build --build-arg IMAGE_ARG=$ARTIFACT-$VERSION -t diqmwl/$ARTIFACT:$VERSION .'
		}
      }
    }
    
    stage('docker_push') {
      steps {
    	sh 'sudo docker push diqmwl/$ARTIFACT:$VERSION'
      }
    }
    
    stage('kubernetes_deploy') {
      steps {
  		dir("config") {
  		  sh 'sed -i "18s/docversion/$ARTIFACT:$VERSION/g" spring.yaml'
    	  sh 'sudo kubectl apply -f spring.yaml'
    	}
      }
    }
    
  }
}