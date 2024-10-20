-- Funções Personalizadas

-- Criando a função (é necessário executar esse comando para que a função seja criada)
CREATE FUNCTION MascararCPF(@cpf VARCHAR(11), @quantidadeDeCaracteres int)
RETURNS VARCHAR(11)
AS
BEGIN
    RETURN LEFT(@cpf, @quantidadeDeCaracteres) + '********'
END

-- Executando a função personalizada
SELECT dbo.MascararCPF('35035967808', 3);

SELECT * FROM categorias;

-- Criando mais uma função personalizada
CREATE FUNCTION ContarRegistros()
RETURNS INT
AS
BEGIN
    RETURN (SELECT COUNT(*) FROM categorias)
END

-- Executando a função personalizada
SELECT dbo.ContarRegistros();

-- Criando mais uma função personalizada
CREATE FUNCTION GetCategoriaById(@id INT)
RETURNS TABLE
AS
RETURN (SELECT * FROM categorias WHERE id = @id)

-- Executando a função personalizada
SELECT * FROM dbo.GetCategoriaById(1);