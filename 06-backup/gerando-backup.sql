-- gerando-backup (O backup também pode ser gerado diretamente pelo gerenciador de banco de dados)

USE DesenvolvedorIO; -- Informando qual banco de dados vamos utilizar para gerar os backup's

-- Gerando um backup FULL (com todos dos dados)
BACKUP DATABASE DesenvolvedorIO
TO DISK = '/var/opt/mssql/data/AulaBackup.bak'
WITH INIT,
NAME = 'Backup do banco de dados'

-- Gerando um backup DIFF (apenas com os dados que forem diferentes comparado ao último backup)
BACKUP DATABASE DesenvolvedorIO
TO DISK = '/var/opt/mssql/data/AulaBackupDiff.bak'
WITH DIFFERENTIAL,
NAME = 'Backup do banco de dados (diferencial)'