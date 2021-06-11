pipeline {
  agent any
  stages {
    stage('Checkout GitSCM') {
            steps {
                git credentialsId: 'git-cred', url: 'https://github.com/Sahilbhawke/k8s_Wordpress'
            }
        }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t sahilbhawke/jenkins-docker:1.0 .'
      }
    }
	stage ('Docker Push') {
      agent any
      steps {
        withDockerRegistry([ credentialsId: "docker-cred", url: "https://registry.hub.docker.com" ]) {
          sh 'docker push sahilbhawke/jenkins-docker:1.0'
        }
             echo "Trying to Push Docker Build to DockerHub"
      }
	}
  }
}
