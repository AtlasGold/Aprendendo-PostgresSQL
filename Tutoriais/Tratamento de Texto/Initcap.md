### O Initcap Deixa As Iniciais De Todas Os Textos Em Caixa Alta
Pode Ser Bem Util Na Hora De Embelezar Suas Consultas, Mas Ele Irá Converter Absolutamente Tudo, Inclusive Preposições

`Select
  Initcap(["Coluna De Texto"])
From 
  ["Sua Tabela"]
Order By Initcap(["Coluna De Texto"]) DESC
`
O Order By Ordena A Sua Consulta Usando Como Paramêtro A Coluna Que Você Escolheu Em Ordem Crescente (ASC) Ou Decrescente (DESC)
