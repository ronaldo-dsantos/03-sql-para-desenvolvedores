CREATE TABLE alunos
(
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(80) NOT NULL,
    cpf CHAR(11) NOT NULL,
    data_nascimento DATE,
    ativo BIT DEFAULT 1
)