--SELECT
SELECT * FROM funcionario;

SELECT nome, dnumero FROM funcionario;

SELECT * FROM funcionario, dependente;

--clausula WHERE

SELECT * FROM funcionario WHERE sexo='F';

SELECT * FROM funcionario WHERE salario>3000;

SELECT * FROM funcionario WHERE dnumero<>1 AND salario<3000;

SELECT * FROM funcionario WHERE dnumero>1 OR sexo='M';

--clausula ORDER BY

SELECT * FROM funcionario ORDER BY nome;

SELECT * FROM funcionario ORDER BY sobrenome DESC;

SELECT * FROM funcionario ORDER BY dnumero DESC, 
sobrenome ASC;

SELECT * FROM funcionario ORDER BY 2;

SELECT nome, salario FROM funcionario WHERE
dnumero=4 ORDER BY dtnasc;

--clausula distinct

SELECT DISTINCT dnumero
FROM funcionario;

SELECT DISTINCT dtnasc, nome
FROM funcionario;

--alterar o nome da coluna
SELECT dnumero AS departamento
FROM funcionario;

SELECT nome, dtnasc AS nascimento
FROM funcionario;

--clausula LIKE
SELECT * FROM funcionario
WHERE nome LIKE 'José%';

SELECT * FROM funcionario
WHERE nome LIKE '%José%';

--alterando valores
SELECT nome, salario * 1.3 FROM funcionario;

SELECT (1+2)*3 ;

SELECT nome, sobrenome, salario, salario * 1.15 as novo_salario
FROM funcionário ORDER BY salario;

