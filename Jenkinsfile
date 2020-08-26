node{
	def app
	
	stage('Clone Repository') {
		/* Clone repo to our Workspace */
		
		checkout scm
	}
	
	stage('Build Image') {
		/* To build the actual docker image */
		
		app = docker.build("aakashtapdia/gof")
	}
	
	stage('Test Image') {
		
		app.inside {
			echo "Tests passed"
		}
	}
	
	stage('Push image') {
		/* 
						Need to first register with Dockerhub before images can be pushed 
				*/
		docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
			}
				echo "Trying to push docker build to Dockerhub"
	}
}
