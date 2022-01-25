````sql
SELECT 
  concat(street,', ',district,', ',city,', ',state) as "Endereço Postal"
FROM 
  "Endereço"
  -- Ordenei pela minha preferência (não ordenei)
  ````

## Dentro do SELECT faremos a concatenação 
```sql
SELECT 
  concat(street,', ',district,', ',city,', ',state) as "Endereço Postal"
````
os "as" no final do concat serve pare rebatizar a coluna com o nome "Endereço Postal"

as virgulas entre aspas simples ',' servem para dar um espaço entre os valores e deixar
mais bonito estéticamente

## Importe da tabela "Endereço" 
````sql 
FROM 
  "Endereço"
ORDER BY ASC
  ````
Importa da tabela onde as informações estão e ordene de formas Ascendente ou Decrescente
