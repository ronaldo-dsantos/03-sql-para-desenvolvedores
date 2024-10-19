SELECT * FROM alunos;

SELECT * FROM alunos WHERE id IN (1, 2); -- IN (1, 2) para fazer a consulta através de um array

SELECT * FROM alunos WHERE id IN (SELECT id FROM alunos); -- IN (SELECT id FROM alunos) para fazer a consulta através de uma sub consulta (sub select)