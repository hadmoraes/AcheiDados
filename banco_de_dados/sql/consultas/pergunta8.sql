-- Os jogos mais baixados tiveram os melhores feedbacks?

select
	jogos_mais_bem_avaliados.id,
    jogos_mais_bem_avaliados.nome as jogos_mais_avaliados,
    jogos_mais_baixados.nome as jogos_mais_baixados,
	total_avaliacoes,
    total_aquisicoes,
	avaliacao
from
	jogos_mais_bem_avaliados
    left join
    jogos_mais_baixados
    on
    jogos_mais_bem_avaliados.id = jogos_mais_baixados.id
where
	total_aquisicoes > 100
order by
	avaliacao desc
;