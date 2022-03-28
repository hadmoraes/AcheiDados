-- Quais as categorias (single players, multiplayers e ambos os modos) dos jogos mais adquiridos ?

select
	*
from
	(
		select 
			count(*) as total_singleplayer 
		from 
			jogos_mais_baixados
		where 
			categorias like '%Single-player%' and categorias not like '%Multi-player%'
    ) as sp
    join
    (
		select 
			count(*) as total_multiplayer
		from 
			jogos_mais_baixados
		where 
			categorias like '%Multi-player%' and categorias not like '%Single-player%'
    ) as mp
    join
    (
		select 
			count(*) as total_multi_single
		from 
			jogos_mais_baixados
		where 
		categorias like '%Single-player%Multi-player%' or categorias like '%Multi-player%Single-player%'
    ) as msp
;