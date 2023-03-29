--JOINs identicos (JOIN e CROSS JOIN)
SELECT f.ident, f.nome, d.numero, d.nome
FROM funcionario f JOIN departamento d;

SELECT f.ident, f.nome, d.numero, d.nome
FROM funcionario f 
CROSS JOIN departamento d;

--INNER JOIN (deve ter a clausula ON ezpecificada)

SELECT f.ident, f.nome, d.numero, d.nome 
FROM funcionario f INNER JOIN departamento d
ON f.dnumero=d.numero;

SELECT f.ident, f.nome, d.numero, d.nome 
FROM funcionario f JOIN departamento d
ON f.dnumero=d.numero;

--LEFT JOIN
SELECT f.ident, f.nome, f.dnumero, d.numero, d.nome 
FROM funcionario f LEFT JOIN departamento d ON 
f.dnumero=d.numero;

--RIGHT JOIN
SELECT f.ident, f.nome, f.dnumero, d.numero, d.nome 
FROM funcionario f RIGHT JOIN departamento d ON 
f.dnumero=d.numero;

--FULL OUTER JOIN
SELECT f.ident, f.nome, f.dnumero, d.numero, d.nome 
FROM funcionario f FULL OUTER JOIN departamento d ON 
f.dnumero=d.numero;

--O MySQL não implementa o FULL OUTER JOIN, como solução podemos utilizar a clausula UNION
SELECT f.ident, f.nome, f.dnumero, d.numero, d.nome FROM 
funcionario f LEFT JOIN departamento d ON f.dnumero=d.numero
UNION
SELECT f.ident, f.nome, f.dnumero, d.numero, d.nome 
FROM funcionario f RIGHT JOIN departamento d ON 
f.dnumero=d.numero;

--SELF JOIN -> JOIN com a mesma tabela
SELECT f.nome as Funcionario, s.nome as Superior FROM
funcionario f LEFT JOIN funcionario s ON f.supident=s.ident