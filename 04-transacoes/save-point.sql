-- SAVE POINT

SELECT * FROM categorias;

-- TRANSACTION
BEGIN TRANSACTION
INSERT INTO categorias(descricao, cadastrado_em) VALUES ('Categoria Nova 1', GETDATE());
INSERT INTO categorias(descricao, cadastrado_em) VALUES ('Categoria Nova 2', GETDATE());
GO
SAVE TRANSACTION NomeTransaction -- Save Point, você pode dar um nome a sua escolha
UPDATE categorias SET descricao = 'Aplicação Web' WHERE descricao = 'Web'
GO

-- ROLLBACK TRANSACTION para desfazer as ações até o Save Point
ROLLBACK TRANSACTION NomeTransaction;

-- ROLLBACK para desfazer todos as ações
ROLLBACK;

-- COMMIT para salvar as ações no banco de dados
COMMIT;

