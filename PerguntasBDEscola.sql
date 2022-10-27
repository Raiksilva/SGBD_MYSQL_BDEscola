use BDEscola;
/*
1) Faça um comando SQL para matricular o aluno "Pedro césar" no curso de informática.
OS dados devem ser inseridos na tabela TB_matricula.

2) Escreva um comando SQL que retorne os nomes dos alunos e do(s) cursos em que estão matriculados.
OS dados deverão estar ordenados pelo nome do curso.

3) Crie um comando SQL que retorne o e-mail de todos os alunos maiores de idade.

4) Desenvolva um comando SQL que mostre o total de alunos.

5) Escreva um comando SQL para listar o total de alunos matriculador em cada curso.

6) Desenvolva um comando SQL que retorne o nome de todos os alunos maiores que 18 anos.

7) Faça um comando SQL que retorne o nome de todas as mulheres.

8) Faça um comando SQL que retorne o nome de todas as mulheres matriculadas no curso de Medicina.

9) Faça um comando SQL que retorne os nomes dos cursos ordenados por ordem alfabética.

10) Crie o enunciado de uma consulta SQL que utilize "Junção" (com resposta).
*/

select * from TB_Aluno;
select * from TB_Curso;
select * from TB_Matricula;

-- Questão 1
INSERT INTO TB_Aluno  (Nome_Aluno,Ano_Nascimento,Email,Sexo)
VALUES ('Pedro Cersa',1995,'Pedro.C@provaSQL.com.br','M');

insert into TB_Matricula (Codigo_Maluno, Codigo_Mcurso)
		value (7,4);


-- Questão 2
SELECT Nome_Aluno, Nome_Curso FROM TB_Aluno
	inner join TB_Matricula on Codigo_Aluno = Codigo_Maluno
	inner join TB_Curso on Codigo_Curso = Codigo_Mcurso
    ORDER BY Nome_Curso;

-- Questão 3 
SELECT  Email from TB_Aluno
	where Ano_Nascimento < 2005;

 
--  Questão 4
SELECT count(*) as Total_Aluno FROM TB_Aluno; 

-- Qustão 5
SELECT count(*) as Total_de_Matriculados,Nome_Curso FROM TB_Aluno
	inner join TB_Matricula on Codigo_Aluno = Codigo_Maluno
	inner join TB_Curso on Codigo_Curso = Codigo_Mcurso
    group by  Nome_Curso;
    
-- Questão 6
SELECT Nome_Aluno from TB_Aluno
	where Ano_Nascimento < 2005;
    
-- Questão 7
select * from TB_Aluno 
	where (Sexo = 'F');
    
-- Questão 8 
select * from TB_Aluno 	
	inner join TB_Matricula on Codigo_Aluno = Codigo_Maluno
	inner join TB_Curso on Codigo_Curso = Codigo_Mcurso
	where (Sexo = 'F') and (Nome_Curso = 'Medicina');
    
-- Questão 9
select * from TB_Curso 
	order by Nome_Curso;
    
-- Questão 10
select * from TB_Aluno
	left join TB_Curso 
	on Codigo_Aluno = Codigo_Curso;