create database BDEscola;
use BDEscola;

create table TB_Aluno(
	Codigo_Aluno int auto_increment primary key,
	Nome_Aluno varchar(60) not null,
	Ano_Nascimento year not null,
	Email varchar(60), 
	Sexo char not null
);
alter table TB_Aluno auto_increment =1;

create table TB_Curso(
	Codigo_Curso int auto_increment primary key,
	Nome_Curso varchar(60) not null
);
alter table TB_Curso auto_increment = 2;

create table TB_Matricula(
	Codigo_Maluno int,
	Codigo_Mcurso int,
	primary key (Codigo_Maluno, Codigo_Mcurso),
    constraint fk_Matricula_Aluno foreign key (Codigo_Maluno) references TB_Aluno(Codigo_Aluno),
    constraint fk_Matricula_Curso foreign key (Codigo_Mcurso) references TB_Curso(Codigo_Curso)
);