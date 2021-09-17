node {
    	stage("Git Check"){
      		sh 'git clone https://github.com/sachinkn777/cicd-nodejs-app-using-docker.git'
      		sh 'ls -ltr'
      		sh 'pwd'
    }

	stage("Docker build"){
		sh 'cd cicd-nodejs-app-using-docker'
		sh 'pwd'
        	sh 'cat cicd-nodejs-app-using-docker/Dockerfile | docker build -f - . -t asia.gcr.io/myfirst-devops-project/js-app:v1'
        	sh 'docker image list'
		}
    
	stage("Image Push"){
		sh 'gcloud auth activate-service-account  myfirst-devops-project@appspot.gserviceaccount.com --key-file=/var/lib/jenkins/myfirst-devops-project-b8ec22d9c28d.json'
        	sh 'gcloud auth configure-docker -q'
		sh 'gcloud auth list'
		sh 'docker push asia.gcr.io/myfirst-devops-project/js-app:v1'
	
    }
	stage("Run Docker"){
		sh 'docker run -d -p 9002:9005 asia.gcr.io/myfirst-devops-project/js-app:v1--name js-app-v1'
		
		
}
}
