-- Quais são os 20 jogos mais baixados?

create view jogos_mais_baixados as
select 
	appid as id,
    name,
    genres,
    categories,
    round((owners_max+owners_min)/2,0) as owners_average 
from 
	steam_dados
order by
	owners_average desc
limit 20
;

select * from jogos_mais_baixados;