-- Qual a faixa e média de preço dos jogos mais baixados? desconsideramos os jogos gratuitos

select 
	min(price) as preco_min,
    max(price) as preco_max,
    round(avg(price),2) as preco_medio
from 
	steam_dados
    inner join
    jogos_mais_baixados
	on
    steam_dados.appid = jogos_mais_baixados.id
where
	price <> 0
;

