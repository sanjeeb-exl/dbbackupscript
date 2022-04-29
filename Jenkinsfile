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
	      powershell returnStatus: true, script: '${env.WORKSPACE}\\BackupDB.ps1'
      }
    }
    
  }
        
}
