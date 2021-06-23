Create Table Alunos (

id_aluno int Primary Key NOT NULL,
nome varchar(200) NOT NULL,
data_nascimento date NOT NULL,
sexo varchar(1) NOT NULL, --M para Masculino ou F para Feminino
data_cadastro datetime NOT NULL,
login_cadastro varchar(15) NOT NULL,
);
 
Alter Table Alunos
	DROP CONSTRAINT fk_Turmas;  

--DROP TABLE Alunos;

Create Table Situacao(

id_situacao int PRIMARY KEY NOT NULL, 
situacao varchar(25) NOT NULL,
data_cadastro datetime,
login_cadastro varchar(15),
);

Create Table Cursos(
id_cursos int PRIMARY KEY NOT NULL,
nome_cursos varchar(200) NOT NULL,
data_cadastro datetime not null,
login_cadastro varchar(15) not null
);

Create Table Turmas(
id_turma int PRIMARY KEY NOT NULL,
id_aluno int NOT NULL,
id_cursos int NOT NULL,
valor_turma numeric(15,2) NOT NULL,
desconto numeric (3,2) NOT NULL,
data_inicio date NOT NULL,
data_termino date,
data_cadastro datetime not null,
login_cadastro varchar(15) not null
);

Create table Registro_Presenca
(
id_turma int not null,
id_aluno int not null,
id_situacao int not null,
data_presenca date not null,
data_cadastro date not null,
login_cadastro varchar(15) not null
);

Alter Table Turmas
ADD CONSTRAINT fk_Curso FOREIGN KEY (id_cursos) REFERENCES Cursos (id_cursos);

Alter Table Turmas
ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

Alter Table Registro_Presenca
ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

Alter Table Registro_Presenca
ADD CONSTRAINT fk_AlunoRP FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

Alter Table Registro_Presenca
ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);


/*
drop table Turmas;
drop table Situacao;
drop table Registro_Presenca;
drop table Cursos;
drop table Alunos;
*/ 

	insert into dbo.Alunos
	(id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
	VALUES
	(2, 'Ralf Chen', '01/01/2001', 'M', '19/07/2021  13:57:23', 'Amorim') 

	Select * FROM dbo.Alunos;