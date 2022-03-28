-- Quais os jogos com mais engajamento?

select
	appid as id,
    name as nome,
    round((owners_max+owners_min)/2,0) as total_aquisicoes,
	average_playtime as media_tempo_jogado
from
	steam_dados
order by 
	 media_tempo_jogado desc 
limit
	20;
