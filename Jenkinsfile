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
	  stage('build') {
		 steps {
            sh "mvn clean install"
         }
      }

    /* #########  Using ANT   #########
                1. copy-artifacts
                2. staging- copy install folder
                3. Build docker image
                4. Docker- Login
                5. Push docker image in to dockerhub
    */
      /*stage('ant-build') {
         steps {
            sh 'ant -f build.xml'
         }
      }*/
      stage('docker-image') {
         steps {
            sh "ant push-docker-image"
         }
      } 

    //Docker-Compose used to run the containers -- Mysql:5.6 and app-info:1.0
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
      } 
    }
}
