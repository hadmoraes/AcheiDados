-- Quais são os 20 jogos mais baixados?

create view jogos_mais_baixados as
select 
	appid as id,
    name as nome,
    genres as generos,
    categories as categorias,
    platforms as sistemas_operacionais,
    round((owners_max+owners_min)/2,0) as total_aquisicoes
from 
	steam_dados
order by
	total_aquisicoes desc
limit 20
;

select * from jogos_mais_baixados;
