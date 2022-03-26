-- Quantos jogos temos cadastrados nas categorias: single player, multi-player e em ambos?

select
	distinct(
		select 
			count(*)
		from 
			steam.steam_dados
		where 
			categories like '%Single-player%' and categories not like '%Multi-player%'
    ) as total_singleplayer,
    (
		select 
			count(*) 
		from 
			steam.steam_dados 
		where 
			categories like '%Multi-player%' and categories not like '%Single-player%'
    ) as total_multiplayer,
    (
		select 
			count(*) 
		from 
			steam.steam_dados
		where 
		categories like '%Single-player%Multi-player%' or categories like '%Multi-player%Single-player%'
    )  as total_multi_single,
	count(*) as total_jogos
from
	steam_dados
;