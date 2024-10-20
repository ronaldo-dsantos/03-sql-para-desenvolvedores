-- Criando uma sequência (Incremento)
-- As sequências são úteis para casos que desejamos criar algum tipo de contador em nossa base de dados (exemplo: um contador de acessoa de um site ou contador de registros em uma tabela)

-- Criando uma sequência
CREATE SEQUENCE MinhaSequencia
AS INT -- Tipo de dado
START WITH 6 -- valor inicial
INCREMENT BY 1 -- valor a ser incrementado a cada vez que for executada
MINVALUE 6 -- podemos definir um valor mínimo
MAXVALUE 1000 -- podemos definir um valor máximo
NO CYCLE -- CYCLE para reiniciar o ciclo quando chegar no valor máximo ou NO CYCLE para não reiniciar

-- Executando uma sequência
SELECT NEXT VALUE FOR MinhaSequencia -- A cada vez que for executada será incrementado o valor definido na sequência

-- Exemplo usando uma sequência
CREATE TABLE TabelaTeste
(
    id INT DEFAULT NEXT VALUE FOR MinhaSequencia,
    descricao VARCHAR(20)
)

INSERT INTO TabelaTeste(descricao) VALUES ('Teste 01');

INSERT INTO TabelaTeste(descricao) VALUES ('Teste 02');

SELECT * FROM TabelaTeste;

