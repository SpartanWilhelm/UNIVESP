--Comandos DDL
-- CREATE TABLE (exemplo)
CREATE TABLE funcionario
(
    ident INT,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereco VARCHAR(200),
    dtnasc DATE,
    salario NUMERIC(10,2),
    sexo CHAR,
    supident INT,
    dnumero INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (supident) REFERENCES Funcionario(ident),
    FOREIGN KEY (dnumero) REFERENCES departamento(numero)
);

--ALTER TABLE (exemplos)
ALTER TABLE funcionario ADD CONSTRAINT FOREIGN KEY (dnumero) REFERENCES departamento(numero);

ALTER TABLE funcionario DROP endereco CASCADE; --ou
ALTER TABLE funcionario DROP endereco RESTRICT;

ALTER TABLE funcionario ALTER supident SET DEFAULT 1163;

ALTER TABLE funcionario ADD endereco VARCHAR(200);

--INSERT TABLE (exemplos)
INSERT INTO FUNCIONARIO
VALUES ( 1163, 'Claudia', 'Morais', 'Rua A – 1 –SP', '1973-02-25', 
5558.00, 'F', 1, 4 );

INSERT INTO FUNCIONARIO (ident, nome, sobrenome, dnumero) 
VALUES ( 1164, 'Jorge', 'Vila Verde', 1 );

--UPDATE (exemplo)
UPDATE PROJETO
SET localizacao = 'Minas Gerais', dnumero = 5
WHERE numero = 1;

--DELETE (exemplos)
DELETE FROM FUNCIONARIO
WHERE ident = 1167;

DELETE FROM FUNCIONARIO
WHERE nome = 'Caio';

