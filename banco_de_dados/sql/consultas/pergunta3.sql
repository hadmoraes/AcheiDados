-- Quais as categorias (single players, multiplayers e ambos os modos) dos jogos mais baixados ?

select
	*
from
	(
		select 
			count(*) as total_singleplayer 
		from 
			jogos_mais_baixados
		where 
			categories like '%Single-player%' and categories not like '%Multi-player%'
    ) as sp
    join
    (
		select 
			count(*) as total_multiplayer
		from 
			jogos_mais_baixados
		where 
			categories like '%Multi-player%' and categories not like '%Single-player%'
    ) as mp
    join
    (
		select 
			count(*) as total_multi_single
		from 
			jogos_mais_baixados
		where 
		categories like '%Single-player%Multi-player%' or categories like '%Multi-player%Single-player%'
    ) as msp
;