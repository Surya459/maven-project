pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                bat 'mvn clean package'
            }
	    post {
	    success {
	    echo 'Now Archiving...'
	    archiveArtifacts artifacts: '**/target/*.war'
	    }
	    }

                }
	stage('Deploy to Staging'){
	    steps{
	    build job: 'deploy-to-staging'
	    }
	    }
	stage('Deploy to Producion') { 
	    steps{
	    timeout(time:5,unit:'DAYS'){
	    input message: 'Approve PRODUCTION DEPLOYMENT?'
	    }
	    build job: 'deploy-to-prod'

	    }
	    post{
	    success{
	    echo 'Code Deployed to Production'
	    }
	    failure {
	    echo 'Deployment Failed'
	    }
	}

            }
        }
    }
