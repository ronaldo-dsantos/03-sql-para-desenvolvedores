-- restaurando-backup (Também podemos fazer essa restauração através da ferramenta de gerenciamento do bd)

USE master; -- Informando qual banco de dados utilizaremos para fazer a restauração do backup

-- Restaurando o backup via SQL
RESTORE DATABASE DesenvolvedorIO
FROM DISK = '/var/opt/mssql/data/AulaBackup.bak'
WITH REPLACE -- informando que vamos fazer a substituição do arquivo original pelo do backup