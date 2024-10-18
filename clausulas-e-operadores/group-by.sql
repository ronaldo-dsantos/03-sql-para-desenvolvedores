SELECT * FROM alunos;

SELECT cidade, estado FROM alunos GROUP BY cidade, estado; -- GROUP BY para agrupar por

SELECT cidade, estado, COUNT(*) FROM alunos GROUP BY cidade, estado; -- Podemos adicionar o COUNT para saber o total de registros agrupados