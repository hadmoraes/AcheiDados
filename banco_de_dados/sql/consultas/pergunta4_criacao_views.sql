-- Qual o percentual dos  sistemas operacionais como requisito dos jogos mais baixados?


-- só windows
create view total_windows as
select 
	count(*)  as total_w
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'windows'
; 

-- só mac 
create view total_mac as
select 
	count(*)  as total_m
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'mac'
; 

-- só linux 
create view total_linux as
select 
	count(*)  as total_l
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'linux'
; 

-- só windows + mac 

create view total_windowsmac as
select 
	count(*)  as total_wm
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'windows;mac'
; 

-- só windows + linux

create view total_windowslinux as
select 
	count(*)  as total_wl
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'windows;linux'
; 
    
-- só mac + linux 

create view total_maclinux as
select 
	count(*)  as total_ml
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'mac;linux'
; 
        
-- os 3  

create view total_windowsmaclinux as
select 
	count(*) as total_wml
from 
	jogos_mais_baixados
where 
	sistemas_operacionais = 'windows;mac;linux'
;



