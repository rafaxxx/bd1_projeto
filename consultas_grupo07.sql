-------------------------- 1-inicio --------------------------
select count(pa.*) as quant_patentes, pr.coordenador as coordenador_projeto
from patente pa, projeto pr
where pa.cod = pr.cod;
-------------------------- 1-fim --------------------------


-------------------------- 2-inicio --------------------------
select *
from publicacao pu 
where pu.veiculo = 'ACM';
-------------------------- 2-fim --------------------------


-------------------------- 3-inicio --------------------------
create view [Lista Alunos Orientados por Doutorados] as
select a.*
from pos p, aluno a, professor pr
where p.aluno = a.aluno
and p.orientador = pr.matr
and pr.titulo = 'DOUTORADO';
-------------------------- 3-fim --------------------------


-------------------------- 4-inicio --------------------------
create trigger orcamento_projeto_check
before 
insert of orcamento on projeto
begin 
	if(new.orcamento > orcamento) then 
		orcamento = new.orcamento;
	else
		RAISE_APPLICATION_ERROR (
         num => -20000,
         msg => 'Cannot updated object');
	end if;
end;
-------------------------- 4-fim --------------------------


-------------------------- 5-inicio --------------------------
create trigger limita_coordenador_orientador
before 
insert or update of orientador on pos
begin 
	num int;
	select into num count(*) from pos where orientador = new.orientador;
	
	if(num < 2) then 
		insert into pos (aluno, titulo, orientador)
		values (:new.aluno, :new.titulo, :new.orientador);
	else
		RAISE_APPLICATION_ERROR (
         num => -20000,
         msg => 'Erro! Limit exceeded.');
	end if;
end;
-------------------------- 5-fim --------------------------


-------------------------- 6-inicio --------------------------
create view [Lista Laboratórios que não estão alocados] as
select la.*, count(re.*) as num_recursos
from recurso re, laboratorio la, projeto_laboratorio pl
where la.cod <> pl.laboratorio
and re.laboratorio = la.cod
order by num_recursos;
-------------------------- 6-fim --------------------------







