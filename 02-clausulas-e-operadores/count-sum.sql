SELECT * FROM cursos;

SELECT COUNT(*) FROM cursos; -- COUNT(*) para contar todos os registros da nossa tabela, podemos também utilizar o WHERE para o COUNT

SELECT COUNT(*), SUM(total_horas) FROM cursos; -- SUM(total_horas) para somar o total de horas de todos os registros

SELECT COUNT(*), SUM(total_horas), SUM(valor) FROM cursos; -- Também podemos usar mais de um SUM na mesma consulta 




