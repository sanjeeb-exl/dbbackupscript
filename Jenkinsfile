pipeline {
  
  agent any 
  
  stages {
    stage("DBBACKUP") {
      steps {
        powershell returnStatus: true, script: 'BackupDB.ps1'
      }
    }
    
  }
        
}
