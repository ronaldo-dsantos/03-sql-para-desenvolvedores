-- Criando um novo campo em uma tabela

SELECT * FROM categorias;

-- Criando um novo compo em uma tabela
ALTER TABLE categorias ADD campo_teste VARCHAR(100) DEFAULT 'Teste'; -- Podemos inserir um valor DEFAULT se necessário
