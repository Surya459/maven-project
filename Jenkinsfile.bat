pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                call 'mvn clean package'
            }
                }
            }
        }
    
