-- Dentre os jogos mais baixados, quantos são gratuitos?

select 
	count(price) as qtd_jogos_gratuitos
from 
	jogos_mais_baixados
    inner join
    steam_dados
    on 
    jogos_mais_baixados.id = steam_dados.appid
where
	price = 0
; 