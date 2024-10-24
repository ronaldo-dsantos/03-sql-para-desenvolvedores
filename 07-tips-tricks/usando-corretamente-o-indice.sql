-- usando-corretamente-o-indice

SELECT * FROM Tabela_Teste;

-- usando o indice incorretamente
SELECT descricao FROM Tabela_Teste WHERE LEFT(descricao, 16) = 'DESCRICAO 900000'; -- ao analisar o plano de execução desta query ela está analisando os 1.000.000 de registros e consumindo muita cpu, evite usar funções em sua busca, isso pode ignorar o indice e deixar a consulta pesada

-- usando o indice corretamente
SELECT descricao FROM Tabela_Teste WHERE descricao LIKE 'DESCRICAO 900000%'; -- neste exemplo deixamos o where buscar pelo campo descricao que existe o indice e utilizamos o like para comparação, deixando a busta totalmente otimizada
