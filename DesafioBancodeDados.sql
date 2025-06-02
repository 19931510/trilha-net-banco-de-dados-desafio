-- 1

select Nome,Ano from Filmes

-- 2

select Nome, Ano From Filmes order by Ano Asc

-- 3

select Nome, Ano, Duracao from Filmes where Nome = 'De volta para o futuro'

-- 4

select Nome from Filmes where Ano = 1997 

-- 5

select Nome from Filmes where Ano > 2000

-- 6

select Nome, Duracao from Filmes where Duracao BETWEEN 101 and 150 order by Duracao Asc 

-- 7

select Ano, COUNT(*) as Quantidade, Max(Duracao) as MaiorDuracao
From Filmes
Group by Ano 
order by MaiorDuracao desc

-- 8

select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- 9

select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome Asc

-- 10

select f.Nome as Filme, g.Genero as Genero
From Filmes f
Join FilmesGenero fg ON f.Id = fg.IdFilme
Join Generos g On fg.IdGenero= g.Id

-- 11

select f.Nome as Filme, g.Genero as Genero
from Filmes f
join FilmesGenero fg on f.Id = fg.IdFilme
join Generos g On fg.IdGenero = g.Id
where g.Genero = 'Mistério'

-- 12

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdAtor
JOIN Atores a ON ef.IdAtor = a.Id;
