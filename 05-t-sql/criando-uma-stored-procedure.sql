-- stored-procedure (procedimentos armazenados)
-- A diferença entre uma procedure e uma function é que as functions podemos utilizar em conjundo com nossas query's, as procedures não

-- Criando uma procedure
CREATE PROCEDURE PesquisarCategoriaPorId(@id INT)
AS
BEGIN
    SELECT * FROM categorias WHERE id = @id
END

-- Executando a procedure (com o parametro nomeado)
EXECUTE dbo.PesquisarCategoriaPorId @id = 3;

-- Executando a procedure (sem o parametro nomeado)
EXECUTE dbo.PesquisarCategoriaPorId 3;

-- Criando uma procedure
CREATE PROCEDURE InserirDadosEmCategorias(@descricao VARCHAR(255))
AS
BEGIN
    if(@descricao IS NULL)
    BEGIN
        RAISERROR('Descrição não é válida', 16, 1) -- Retornar um erro (nome do erro, severidade, state error)
        RETURN
    END
    INSERT INTO categorias(descricao, cadastrado_em) VALUES(@descricao, GETDATE())
END

-- Executando a procedure
EXEC dbo.InserirDadosEmCategorias @descricao = 'Categoria Procedure';

-- Executando a procedure com valor NULL para cair no IF
EXEC dbo.InserirDadosEmCategorias @descricao = NULL;

SELECT * FROM categorias;
