#
# ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── I ──────────
#   :::::: B A C K U P I N G   W I T H   P O W E R S H E L L   A N D   M Y S Q L D U M P : :  :   :    :     :        :          :
# ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#

#
# ─── VARIABLES ──────────────────────────────────────────────────────────────────
#

$dbUser     ="root"
$dbPassword ="exl@12345"
$dbHost     ="localhost"
$dbName     ="northwinddb"


#
# ─── DATE WITH FORMAT TO ADD A OUT SQL FILE ─────────────────────────────────────
#
$ACTUAL_DATE               = Get-Date -Format "dd-MM-yyyy hh.mm.ss"


#
# ─── GETTING THE NAME OF THE OUT SQL FILE TO BACKUP ─────────────────────────────
#
$PATH_DBNAME_BAKUP          ="C:\DBBackup"
$FILE_NAME_BACKUP_DBNAME    ="DBNAMEdump_"

$FILE_BACKUP_DBNAME         = $PATH_DBNAME_BAKUP+$FILE_NAME_BACKUP_DBNAME+$ACTUAL_DATE+".sql"


#
# ─── INVOKING THE COMPLETE COMMAND ──────────────────────────────────────────────
#

#
# ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── I ──────────
#   :::::: B A C K U P I N G   W I T H   P O W E R S H E L L   A N D   M Y S Q L D U M P : :  :   :    :     :        :          :
# ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#

#
# ─── VARIABLES ──────────────────────────────────────────────────────────────────
#

$dbUser     ="root"
$dbPassword ="exl@12345"
$dbHost     ="localhost"
$dbName     ="Northwinddb"


#
# ─── DATE WITH FORMAT TO ADD A OUT SQL FILE ─────────────────────────────────────
#
$ACTUAL_DATE               = Get-Date -Format "dd-MM-yyyy hh.mm.ss"


#
# ─── GETTING THE NAME OF THE OUT SQL FILE TO BACKUP ─────────────────────────────
#
$PATH_DBNAME_BAKUP          ="C:\DBBackup\"
$FILE_NAME_BACKUP_DBNAME    ="DBNAMEdump_"

$FILE_BACKUP_DBNAME         = $PATH_DBNAME_BAKUP+$FILE_NAME_BACKUP_DBNAME+$ACTUAL_DATE+".sql"

echo $FILE_BACKUP_DBNAME

#
# ─── INVOKING THE COMPLETE COMMAND ──────────────────────────────────────────────
#C:\Program Files\MySQL\MySQL Server 8.0\bin
pushd C:\Program Files\MySQL\MySQL Server 8.0\bin
.\mysqldump.exe --defaults-extra-file=mysql-credentials.cnf -h $dbHost   $dbName > $FILE_BACKUP_DBNAME
