SELECT * FROM alunos;

SELECT cidade, estado, COUNT(*) total FROM alunos GROUP BY cidade, estado; -- total = criando um alias para a coluna que vai exibir o COUNT

SELECT cidade, estado, COUNT(*) total FROM alunos 
GROUP BY cidade, estado
HAVING COUNT(*) > 2; -- HAVING COUNT(*) > 2 = se o resultado do COUNT for > 2