pipeline {
  
  agent any 
  
  stages {
    stage('Choose DB')
    steps {
parameters {
  choice choices: ['NorthwindDB', 'DevOpsDB'], name: 'DBName'
}
    }

    stage("DBBACKUP") {
      steps {
        powershell returnStatus: true, script: 'BackupDB.ps1'
      }
    }
    
  }
        
}
