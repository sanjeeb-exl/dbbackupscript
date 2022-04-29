pipeline {
  
  agent any 
 parameters {
  choice choices: ['NorthwindDB', 'DevOpsDB'], name: 'DBName' 
 }
  stages {
    stage('Choose DB') {
    steps {
	 /*  script {
		    properties([
			    parameters {
  choice choices: ['NorthwindDB', 'DevOpsDB'], name: 'DBName' } ]) 
	    }*/
	    echo "The sanjeeb123933 dbname ${DBName}"
    }
	}

    stage("DBBACKUP") {
      steps {
	      powershell returnStatus: true, script: 'C:\\ProgramData\\Jenkins\\.jenkins\\workspace\\Pipelineascode\\Parameterized-DBBackup\\BackupDB.ps1'
      }
    }
    
  }
post {
always {

     /* junit 'examples/feed-combiner-java8-webapp/target/surefire-reports/*.xml'*/
emailext body: '$PROJECT_DEFAULT_CONTENT', subject: '$PROJECT_DEFAULT_SUBJECT', to: 'devops81@gmail.com'
} 
}        
}
