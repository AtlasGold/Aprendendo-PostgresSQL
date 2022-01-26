# Entendendo os Joins
## Para que serve ?
Os joins mesclam duas ou mais tabelas (normalmente as colunas em comum são respectivamente a chave primária e chave estrangeira)
## Como funcionam ?
Depende de quais informações de cada tabela você vai precisar, isso ramifica os joins em : ``Inner Join``, ``Left Join``, ``Right Join`` e ``Full Join``.
## Vamos ver uns exemplos usando estas duas tabelas: 
``` 
TabelaA        TabelaB 
id| name       id | name
-- ----       --  ----
1 | *Pirate     1 | Rutabaga
2 | Monkey      2 | *Pirate
3 | *Ninja      3 | Darth Vader
4 | Spaghetti   4 | *Ninja

```
(notem nas duas tabelas as linhas com dados repetidos, isso vai ser importante mais tarde)

## Inner Join
![image](https://user-images.githubusercontent.com/72756630/151256595-2acc944e-b299-45ef-9510-3d5ff203cdbc.png)

### Mostra somente aquilo que correspondem na Tabela A e na Tabela B ao mesmo tempo.
Dados que existem em apenas uma tabela não será mostrado
`````sql
SELECT * FROM TabelaA
INNER JOIN TabelaB
ON TabelaA.name = TabelaB.name
``````
### Deve exibir isto : 
```diff
1   Pirate     2    Pirate
3   Ninja      4    Ninja
```
Apenas as linhas com dados que se repetem em ambas as tabelas.(quando disponíveis) 
na Tabela B.


## Full Join
### A consulta mostra os dados da Tabela A que são correspondentes (quando disponíveis) na Tabela B.
Se não houver correspondência, a linha do lado da tabela conterá nulo.


![image](https://user-images.githubusercontent.com/72756630/151259375-5b9d0ee9-8036-49b5-9987-6453f5e1b17d.png)
 ```` sql 
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name
id    name       id    name
````
### Deve exibir o seguinte : 
````
1     Pirate     2     Pirate

2     Monkey     null  null

3     Ninja      4     Ninja

4     Spaghetti  null  null

null  null       1     Rutabaga

null  null       3     Darth Vader
````
Os dados que não existiam em uma das tabelas foi chamado de ``null``

Não exisita o registro ```Monkey``` na tabela B, tanto a coluna ID quando a coluna Name ficou como ``null``

## Left Join 
### Mostra os dados da Tabela A, com os registros correspondentes (quando disponíveis) na Tabela B.
Se não houver correspondência, o lado direito conterá nulo.


![image](https://user-images.githubusercontent.com/72756630/151260837-b003d98a-20ed-4bbf-8226-d99359b1c476.png)
````sql

SELECT * FROM TabelaA
LEFT OUTER JOIN TabelaB
ON TabelaA.name = TabelaB.name

````
### Deve exibir assim: 

````
id  name       id    name
--  ----       --    ----
1   Pirate     2     Pirate
2   Monkey     null  null
3   Ninja      4     Ninja
4   Spaghetti  null  null
````
Mostrou os dados Da tabela da Esquerda(Tabela A) e as que não existiam na tabela da direita (Tabela B) os valores ficaram nulos


## Left Join (Apenas os registros unicos da Esquerda)
### Para produzir o conjunto de registros apenas na Tabela A, mas não na Tabela B. 
executamos a mesma junção externa esquerda e excluímos os registros que não queremos do lado direito por meio de uma cláusula where.


![image](https://user-images.githubusercontent.com/72756630/151262201-84f9e7c9-6531-4530-b6b8-c5ae4fe11d61.png)
````sql

SELECT * FROM TabelaA
LEFT OUTER JOIN TabelaB
ON TabelaA.name = TabelaB.name
WHERE TabelaB.id IS null
id  name       id     name
````
### Deve exibir assim: 

````
2   Monkey     null   null

4   Spaghetti  null   null
````
O Where mostrou apenas os dados da tabela A que não correspondem na tabela B


