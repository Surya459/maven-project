pipeline {
agent any
stages{
      stage('Build'){
          steps {
	     echo 'now building...'
	     }
	     post {
	     success {
	        echo 'now archiving...'
		
		}

		}

		}

		}

		}

