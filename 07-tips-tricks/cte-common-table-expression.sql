-- cte-common-table-expression
-- recurso oferecido pelo próprio banco de dados, é uma alternativa as sub querys, views ou funções criadas pelo usuários, o objetivo do CTE é devolver um conjunto de dados temporários, ou seja, no momento que você finaliza sua execução a informação é descartada
-- útil para utilizar em algumas situações onde você não precisa armazenar estes resultados posteriomente

-- criando as tabelas para o exemplo
use DesenvolvedorIO;

CREATE TABLE produtos
(
	id int identity primary key,
	descricao varchar(100)
)
GO

CREATE TABLE pedidos
(
	id int identity primary key,
	data DATE,
	observacao VARCHAR(100)
)
GO


CREATE TABLE pedido_itens
(
	id int identity primary key,
	pedido_id INT,
	produto_id INT,
	quantidade INT,
	valor DECIMAL(12, 2),
	FOREIGN KEY(pedido_id) REFERENCES pedidos(id),
	FOREIGN KEY(produto_id) REFERENCES produtos(id),
)
GO

-- inserindo dados as nossas tabelas
DECLARE @produtos INT = 1 
WHILE @produtos <= 50
BEGIN  
  INSERT INTO produtos(descricao)  VALUES ('PRODUTO '+cast(@produtos as varchar));
  SET @produtos = @produtos+1
END 

DECLARE @pedidos INT = 1 
DECLARE @itens INT = 1 
WHILE @pedidos <= 1000
BEGIN  
  INSERT INTO pedidos(data, observacao)  VALUES (GETDATE(), 'OBSERVACAO '+cast(@pedidos as varchar));
  WHILE @itens <= 50
  BEGIN
	INSERT INTO pedido_itens(pedido_id,produto_id,quantidade,valor)
	VALUES  (@pedidos, @itens, 1, 1);
	SET @itens = @itens + 1;
  END
  SET @itens = 1;
  SET @pedidos = @pedidos+1
END 
GO

-- inserindo index a nossa tabela
CREATE NONCLUSTERED INDEX idx_pedido_itens_pedido_id
ON  pedido_itens (pedido_id)
INCLUDE (produto_id,quantidade)
GO

-- criando uma query de maneira não performática (neste exemplo, para cada pedido ela varre toda a tabela produtos, dependendo da quantidade de pedidos e produtos pode aumentar muito o custo da cpu e deixar essa query pouco performática)
SELECT prod.descricao, i.produto_id, SUM(i.quantidade) total 
FROM pedido_itens i
INNER JOIN pedidos p ON i.pedido_id = p.id
INNER JOIN produtos prod ON prod.id = i.produto_id
GROUP BY prod.descricao, i.produto_id
ORDER BY i.produto_id
GO

-- criando uma query de maneira performática com o CTE
WITH Consulta (codigo, quantidade) AS ( -- WITH Consulta = criando o nome do CTE | (codigo, quantidade) = nomeandos os campos que serão retornados na consulta do CTE | AS (query que desejamos executar no CTE)
	SELECT i.produto_id, SUM(i.quantidade) total 
	FROM pedido_itens i
	INNER JOIN pedidos p ON i.pedido_id = p.id
	GROUP BY i.produto_id	
)

-- utilizando o CTE
SELECT prod.descricao, c.codigo, c.quantidade FROM Consulta c 
INNER JOIN produtos prod ON prod.id = c.codigo
ORDER BY c.codigo 