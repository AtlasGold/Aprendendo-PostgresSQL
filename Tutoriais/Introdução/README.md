# Breve introdução ao SQL
## O que é uma consulta ?
O banco de dados guarda muitas informações, você vai pedir que o banco mostre a você apenas aquelas informações que você deseja ou todas
## Ok, mas como fazemos isso ? 
Usando a função ` SELECT ` e logo depois escrever quais as colunas que você quer `Selecionar`

Exemplo : 
```sql
Select Nome, Cpf, idade
````
## Só isso ? 
Não, você precisa também dizer de qual tabela ele vai tirar essas informações, um banco de dados também chamado de `Schema` pode possuir varias tabelas, você precisa especificar de quais tabelas você quer tirar as informações

Para isso basta usar a função `From` logo após o seu ```Select```
```sql
FROM ["Nome da tabela"]
```
## Com isso você ja pode selecionar as colunas das suas tabelas, mas como melhorar ?
Existe uma função chamada ``Where``que serve para filtrar as colunas da sua consulta e mostrar apenas aqueles que obedecem o seu filtro 
Exemplo :

```sql
Select 
  Nome, Cpf, Idade 
From "Users"
Where Idade > 18
````
Com isso a sua consulta irá mostrar o Nome, Cpf e idade dos seus usúarios mas somente aqueles cuja a idade seja maior do que 18


