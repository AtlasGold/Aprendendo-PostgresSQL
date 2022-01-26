````sql
SELECT A.Coluna1, B.Coluna2
FROM ["Tabela 1"] as A
  FULL JOIN
      ["Tabela 2"] as B
ON A.Coluna1 = B.Coluna2
````

 Usaremos o `FULL JOIN`  para mesclar 2 tabelas. É preciso dar um apelido a cada tabela que você esta importando, pra isso usamos o `AS` logo 
 após a escrever ela. Isto serve para diferenciar as colunas de cada, vamos supor que nas duas tabelas existem as colunas ID, diferenciamos ultilizando 
 o nome da tabela ou apelido que você deu antes da coluna, desta forma ```tabela."coluna" ``` dentro do select
 
 Uma parte importante é *sincroninzação* das tabelas usando a clausula ``ON``.
 
 ````sql
 ON A.Coluna1 = B.Coluna2
 `````
 
 As tabelas precisam ter colunas que se relacionem para quando você fizer a consulta os resultados das duas tabelas precisam estar sincronizados.
  Ou seja, as tabelas precisam de no minimo uma coluna que tenha valores iguais nas duas tabelas.
 
