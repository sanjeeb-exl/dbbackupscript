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
echo "The parameters dbname %DBName%"
    }
	}

    stage("DBBACKUP") {
      steps {
        powershell returnStatus: true, script: 'BackupDB.ps1'
      }
    }
    
  }
        
}
