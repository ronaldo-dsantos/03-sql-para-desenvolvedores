-- Renomeando Objetos

SELECT * FROM categorias;

-- Alterando o nome de uma coluna
EXECUTE sp_rename 'dbo.categorias.campo_teste', 'campo_renomeado', 'COLUMN'; -- sp_rename storage procedure nativa do banco de dados para renomear objetos

SELECT * FROM TabelaTeste;

-- Alterando o nome de uma tabela  
EXECUTE sp_rename 'dbo.TabelaTeste', 'TabelaRenomeada';

SELECT * FROM TabelaRenomeada;