pipeline{
     agent any
	 tools{
	 maven 'maven-jenkins'
	 }
	 
	 stages{
	   stage('Build'){
	   steps{
	   
	    sh script: 'mvn clean package'
		}
	   }
	   
	   stage('Upload war to nexus'){
	   steps{
	   
	    nexusArtifactUploader artifacts: [[artifactId: 'maven-project', classifier: '', file: '/var/lib/jenkins/workspace/nexus-pipeline-job/target/webapp/webapp.war', type: 'war']], credentialsId: 'nexus3', groupId: 'com.example.maven-project', nexusUrl: 'http://13.234.231.5:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'http://13.234.231.5:8081/repository/nexus-pipeline/', version: '1.0'
		}
	   }
	 }

}
