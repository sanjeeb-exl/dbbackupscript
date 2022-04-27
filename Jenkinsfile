pipeline {
  
  agent any 
  parameters {
  choice choices: ['NorthwindDB', 'DevOpsDB'], name: 'DBName'
}
  stages {
    stage('Choose DB') {
    steps {
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
