## A FUNÇÃO UPPER COLOCA TODOS OS CARACTERES EM CAIXA ALTA(MAIÚSCULO).
````sql
SELECT 
  UPPER("[COLUNA COM TEXTO]")
FROM
  ["Sua Tabela"]
````
 ESSA CONSULTA IRÁ CONVERTER TODOS OS CARACTERES DA COLUNA QUE VOCÊ ESCOLHEU PARA CAIXA ALTA, RECOMENDO QUE USE COMO EXEMPLO COLUNA DE NOMES DE USUÁRIO
  

EXEMPLO COM WHERE
````sql
SELECT 
  "NOME"
FROM 
  ["SUA TABELA"]
WHERE
  NOME = UPPER(NOME)
````
MOSTRARÁ APENAS OS NOMES NA TABELA QUE ESTÃO EM CAIXA ALTA
