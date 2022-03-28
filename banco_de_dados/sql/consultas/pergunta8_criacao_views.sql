-- Quais são os jogos mais bem avaliados?

create view jogos_mais_bem_avaliados as
select
	appid as id,
    name as nome,
	positive_ratings + negative_ratings as total_avaliacoes,
	round(((positive_ratings - negative_ratings)/(positive_ratings + negative_ratings))*100,2)  as avaliacao
from
	steam_dados
order by
	avaliacao desc;
    