-- Os jogos mais bem avaliados tem suporte técnico próprio cadastrado?

select
	id,
    nome,
    total_avaliacoes,
    avaliacao,
	case
		when support_url = '' then 'não'
        else 'sim'
    end as tem_suporte
from
	jogos_mais_bem_avaliados
    inner join
    steam_support_info
    on
    jogos_mais_bem_avaliados.id = steam_support_info.steam_appid
where 
	total_avaliacoes > 10000
order by 
	avaliacao desc
limit 
	20
;