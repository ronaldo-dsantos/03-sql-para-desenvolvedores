-- Removendo Coluna

SELECT * FROM categorias;

ALTER TABLE categorias DROP COLUMN campo_teste02; -- DROP COLUMN para remover uma coluna (neste exemplo não foi possível porque existe um objeto dependente (CONSTRAINT) desta coluna, por isso vamos excluir ele na linha abaixa para depois excluir a coluna)

ALTER TABLE categorias DROP CONSTRAINT DF__categoria__campo__05D8E0BE; -- DROP CONSTRAINT para excluir o objeto dependente