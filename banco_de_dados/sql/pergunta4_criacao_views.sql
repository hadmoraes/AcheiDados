-- Qual o percentual dos  sistemas operacionais como requisito dos jogos?

-- total de jogos

select count(*) from steam_dados;
select * from steam_dados;

-- só windows 1367
create view total_windows as
select 
	count(*)  as total_w
from 
	steam.steam_dados
where 
	platforms = 'windows'
; 

-- só mac 1
create view total_mac as
select 
	count(*)  as total_m
from 
	steam.steam_dados
where 
	platforms = 'mac'
; 

-- só linux zero
create view total_linux as
select 
	count(*)  as total_l
from 
	steam.steam_dados
where 
	platforms = 'linux'
; 

-- só windows + mac 301

create view total_windowsmac as
select 
	count(*)  as total_wm
from 
	steam.steam_dados
where 
	platforms = 'windows;mac'
; 

-- só windows + linux 19

create view total_windowslinux as
select 
	count(*)  as total_wl
from 
	steam.steam_dados
where 
	platforms = 'windows;linux'
; 
    
-- só mac + linux zero

create view total_maclinux as
select 
	count(*)  as total_ml
from 
	steam.steam_dados
where 
	platforms = 'mac;linux'
; 
        
-- os 3   471

create view total_windowsmaclinux as
select 
	count(*) as total_wml
from 
	steam.steam_dados 
where 
	platforms = 'windows;mac;linux'
;



