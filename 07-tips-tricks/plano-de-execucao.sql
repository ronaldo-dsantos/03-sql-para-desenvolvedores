-- plano-de-execucao

-- informando qual banco de dados utilizaremos
use DesenvolvedorIO;

-- criando uma tabela
CREATE TABLE Tabela_Teste
(
  id INT,
  descricao varchar(80)
)

--- inserindo 1.000.000 de registros na tabela
DECLARE @id INT = 1
DECLARE @p1 INT,@p2 INT,@p3 INT,@p4 INT
WHILE @id <= 200000
BEGIN 
  SET @p1=@id+200000
  SET @p2=@id+400000
  SET @p3=@id+600000
  SET @p4=@id+800000
  INSERT INTO Tabela_Teste(id, descricao) 
	VALUES (@id,'Descricao '+cast(@id as varchar(7))),
		   (@p1,'Descricao '+cast(@p1 as varchar(7))),
		   (@p2,'Descricao '+cast(@p2 as varchar(7))),
		   (@p3,'Descricao '+cast(@p3 as varchar(7))),
		   (@p4,'Descricao '+cast(@p4 as varchar(7)));
  SET @id = @id+1
END 

-- realizando um select para podermos analizar o plano de execução
SELECT descricao FROM Tabela_Teste WHERE descricao='DESCRICAO 900000'; -- ao analizarmos o plano de execução desta query podemos constatar que ela não está otimizada, que está com um custo alto de CPU e analizando 1.000.000 de registros para trazer o resultado solicitado

CREATE INDEX idx_tabela_teste_descricao ON Tabela_Teste(descricao); -- criamos um index para o campo descrição para otimizar a consulta da query acima, agora quando executada novamente, ao analizar o plano de execução podemos constatar que está com um baixo custo de cpu e fazendo a consulta de 1 único registro para trazer o resultado solicitado