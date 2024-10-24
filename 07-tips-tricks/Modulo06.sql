--SELECT * FROM alunos WHERE nome = 'Rafael'

--SELECT * FROM alunos WHERE id >= 3

--SELECT * FROM alunos WHERE id >= 3 AND nome='Bruno'

--SELECT * FROM alunos WHERE id >= 3 AND (nome='Bruno' OR nome='Heloysa') 

--SELECT * FROM alunos WHERE nome LIKE 'Rafael'
--SELECT * FROM alunos WHERE nome LIKE 'Ra%' -- Consultar pelas iniciais 

--SELECT * FROM alunos WHERE nome LIKE '%o'

--SELECT * FROM alunos WHERE nome LIKE '%a%'

--SELECT * FROM alunos WHERE nome LIKE 'R%l'

--SELECT MAX(id) FROM alunos 
--SELECT MIN(id) FROM alunos 

--SELECT * FROM alunos WHERE id = (SELECT MAX(id) FROM alunos)

--SELECT * FROM cursos

--SELECT COUNT(*), SUM(total_horas), SUM(valor) FROM cursos

--SELECT cidade, estado, COUNT(*) FROM alunos GROUP BY cidade, estado

--SELECT cidade, estado, COUNT(*) Total FROM alunos 
--GROUP BY cidade, estado
--HAVING COUNT(*) > 1

--SELECT * FROM alunos WHERE id IN (2, 4)
--SELECT * FROM alunos WHERE id IN (SELECT id FROM alunos)

SELECT * FROM alunos WHERE id BETWEEN 2 AND 4




