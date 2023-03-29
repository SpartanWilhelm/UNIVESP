--TRUNCATE
SELECT TRUNCATE (1.223, 1);

--ROUND
SELECT ROUND (-1.23);

SELECT ROUND (1.223,1);

--CONCAT
SELECT CONCAT ('My', 'S', 'QL');

--LOWER and UPPER
SELECT LOWER ('QUADRATICALLY');
SELECT UPPER ('quadratically');

--AVG
SELECT AVG(salario) FROM funcionario
WHERE dnumero=4;

--SUM
SELECT SUM(salario) FROM funcionario
WHERE dnumero=4;

--MIN and MAX
SELECT MAX(salario), MIN (salario), MAX(dtnasc), MIN(dtnasc) 
FROM funcionario;

SELECT MAX(salario), MIN(salario) 
FROM funcionario WHERE dnumero=4;

--COUNT
SELECT COUNT(*), COUNT(salario), COUNT(supident)
FROM funcionario;

SELECT COUNT(*), COUNT(supident) 
FROM funcionario WHERE dnumero=1;

--GROUP BY
SELECT dnumero, AVG(salario), SUM(salario) 
FROM funcionario GROUP BY (dnumero);

SELECT dnumero, COUNT(*), MAX(salario) 
FROM funcionario WHERE dnumero>1
GROUP BY (dnumero);

--HAVING
SELECT dnumero, AVG(salario), SUM(salario) FROM funcionario 
GROUP BY (dnumero) HAVING SUM(salario)<5000;

SELECT dnumero, COUNT(*), MAX(salario)
FROM funcionario WHERE dnumero>1
GROUP BY (dnumero) HAVING MAX(SALARIO)>5000;


