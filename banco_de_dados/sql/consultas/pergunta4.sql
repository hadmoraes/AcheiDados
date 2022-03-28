-- Qual o percentual dos  sistemas operacionais como requisito dos jogos mais baixados?

select
	round((total_w/total_jogos)*100,2) as pct_windows,
    round((total_m/total_jogos)*100,2) as pct_mac,
    round((total_l/total_jogos)*100,2) as pct_linux,
	round((total_wm/total_jogos)*100,2) as pct_windows_mac,
    round((total_wl/total_jogos)*100,2) as pct_windows_linux,
    round((total_ml/total_jogos)*100,2) as pct_mac_linux,
    round((total_wml/total_jogos)*100,2) as pct_windows_mac_linux
from 
 (select count(*) as total_jogos from jogos_mais_baixados) as mais_baixados
 join
 total_mac 
 join 
 total_windows 
 join
 total_linux
 join
 total_windowsmac
 join
 total_windowslinux
 join
 total_maclinux
 join
 total_windowsmaclinux
;