pipeline {
agent any
stages{
      stage('Build'){
          steps {
	     sh 'mv clean package'
	     }
	     post {
	     success {
	        echo 'now archiving...'
		archiveArtifacts artifacts: '**/target/*.war'
		}

		}

		}

		}

		}

