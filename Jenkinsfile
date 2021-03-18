pipeline {

	agent any
	
	tools {
      maven "maven"
      ant "ant"
   }

   // Git Repo URL
    stages {
      stage('SCM') {
         steps {
            git 'https://github.com/anunaidu/App-Info.git'
         }
      }

    // using MAVEN target folder is cretead and target folder contains .war file
	  stage('install') {
		 steps {
            sh "mvn clean install"
         }
      }

    // #########  ANT   #########
    // Delete existing things
      stage('clean') {
         steps {
            sh "ant clean"
         }
      } 

    /*Docker-Compose used to run the containers -- Mysql:5.6 and app-info:1.0
      stage('container') { 
         steps {
            sh "docker-compose -f staging/docker/docker-compose.yml up -d --abort-on-container-exit"
         }
      }
    // Login into AWS Account and upload's Archive in to S3 bucket
	  stage('Push archive to s3') {
         steps {
            sh "ant push-archive"
         }
      } */
    }
}
