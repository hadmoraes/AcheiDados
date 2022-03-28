-- Quais os maiores faturamento em vendas nos últimos 5 anos?

select 
	appid as id ,
    name as nome,
    release_date as data_lancamento,
    genres as generos,
    round((owners_max+owners_min)/2,0) as total_aquisicoes,
    round(price*round((owners_max+owners_min)/2,0),0) as faturamento
from
	steam_dados
where
	release_date > DATE_SUB(NOW(), INTERVAL 5 YEAR)
order by
	faturamento desc
limit 
	100;
