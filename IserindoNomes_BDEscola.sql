use BDEscola;
desc table TB_Aluno;

INSERT INTO TB_Aluno  (Nome_Aluno,Ano_Nascimento,Email,Sexo)
VALUES ('Josiel Jardim',1974,'josiel@provaSQL.com.br','M'),
	   ('Ana Maria',1980,'ana@provaSQL.com.br', 'F'),
       ('João Pedro',1979,'joao@provaSQL.com.br','M');
       
INSERT INTO TB_Curso (Nome_Curso)
VALUES ('Medicina'),
	   ('Arquitetura'),
       ('Filosofia'),
       ('Informática'),
       ('Jornalismo');
       
show tables;

INSERT INTO TB_Matricula (Codigo_Maluno, Codigo_Mcurso)
values (4,1),
	   (5,1),
       (6,2),
       (6,5);
select * from TB_Aluno;
select * from TB_Curso;

SELECT * FROM TB_Matricula;
	
    
INSERT INTO TB_Aluno  (Nome_Aluno,Ano_Nascimento,Email,Sexo)
VALUES ('Raquel fut',2004,'Raquel@provaSQL.com.br', 'F'),
	   ('Maria Fabieli',2000,'Fabieli@provaSQL.com.br', 'F');

INSERT INTO TB_Matricula (Codigo_Maluno, Codigo_Mcurso)
values (8,4),
	   (9,1);