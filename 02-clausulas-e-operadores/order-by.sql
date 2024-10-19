SELECT * FROM alunos;

SELECT * FROM alunos ORDER BY nome; -- ORDER BY para ordenação de forma ascendente

SELECT * FROM alunos ORDER BY nome DESC; -- DESC para ordenação de forma descendente

SELECT * FROM alunos ORDER BY 1 DESC; -- Também podemos utilizar o índice da coluna ao invés do nome

SELECT * FROM alunos ORDER BY nome ASC, cpf DESC, estado ASC; -- Também podemos ordenar mais de um campo de forma ASC ou DESC, a ordem respeitada será do primeiro para o último

