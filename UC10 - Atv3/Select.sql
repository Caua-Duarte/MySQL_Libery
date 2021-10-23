use bd_fifa_caua;

select p.selecao, j.nome
from jogador j 
inner join pais p on j.pais_idPais_3 = p.idpais
	where j.situacao = "T"
    order by p.selecao, j.nome asc;

select p.selecao, j.nome, 
count(s.jogador_idJogador_sai) 
from jogador j 
inner join pais p on j.pais_idPais_3 = p.idpais 
inner join substituicao s on j.idjogador = s.jogador_idJogador_sai
    group by j.idjogador
	order by p.idpais asc;
    
select p.selecao, 
count(if (c.amarelo =1, c.amarelo, null)) as amarelo, 
count(if (c.vermelho =1, c.vermelho, null)) as vermelho  
from jogador j
inner join jogos jg  
inner join pais p on j.pais_idPais_3 = p.idpais 
inner join cartao c on c.jogos_idRodada_1 = jg.idRodada and c.jogos_idJogador_1 = j.idJogador
	group by p.selecao
	order by p.idpais asc;

select g.idgrupo as "Grupo", 
p.selecao as "Seleção", 
p.pontos as "Pontos", 
p.vitorias as "Vitórias", 
p.empates as "Empates",
p.derrotas as "Derrotas", 
(p.golspro - p.golscontra) as "Saldo de Gols"
from pais p 
inner join grupo g on g.idgrupo = p.grupo_idGrupo
    order by g.idgrupo, p.pontos desc;
    

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
