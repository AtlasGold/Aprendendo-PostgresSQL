SELECT "cpf", "email" 
FROM "[Sua Tabela]"
WHERE initcap(full_name) LIKE 'Primeiro%Usuario' OR initcap(full_name) LIKE 'Segundo%Usuario' OR initcap(full_name) LIKE 'Terceiro%Usuario' 
ORDER BY full_name ASC

--Na linha 3, a clausula LIKE serve para procurar para buscar valores com nomes parecidos nestas colunas. O % funciona para procurar caracteres semelhantes
--Exemplo : WHERE initcap(full_name) LIKE 'Mauricio%Silva%Ferreira' OR initcap(full_name) LIKE 'Raphaela%Pereira%Barbosa' OR initcap(full_name) LIKTE 'Marcia%Matias' 
