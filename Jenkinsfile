pipeline {
  
  agent any 
 
  stages {
    stage('Choose DB') {
    steps {
	    script {
		    properties([
			    parameters {
  choice choices: ['NorthwindDB', 'DevOpsDB'], name: 'DBName' } ])
	    }
echo "The parameters"
    }
	}

    stage("DBBACKUP") {
      steps {
        powershell returnStatus: true, script: 'BackupDB.ps1'
      }
    }
    
  }
        
}
