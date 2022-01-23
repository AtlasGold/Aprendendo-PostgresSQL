## Concat funciona para Concatenar as colunas, mostrar todas elas juntas em uma só coluna 

Vamos dizer que o nome de um usuario é "Jonas" , seu cpf é 12345678 e sua idade é 20

Exemplo com CONCAT
`````sql
Select CONCAT("Nome","CPF","idade") 
FROM ["SUA TABELA"]
GROUP BY "Nome", "CPF" , "idade"   -- sempre que usar uma function dentro de um select devemos agrupar usando um group by as colunas que serão agrupada (Todas)
````
A consulta mostrará 
[Jonas1234567820]
está concatenado ou seja, tudo junto agrupado
