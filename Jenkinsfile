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
		docker.withRegistry('https://registry.hub.docker.com', '73b8b534-d82d-4359-8085-3e0acc2ca3b0') {
			app.push("${env.BUILD_NUMBER}")
			app.push("latest")
			}
				echo "Trying to push docker build to Dockerhub"
	}
}
