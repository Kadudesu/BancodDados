CREATE DATABASE Clinica;

CREATE TABLE IF NOT EXISTS Sala(
	Numero_Sala	varchar(3),
    Andar		int(12)
);

CREATE TABLE IF NOT EXISTS Medicos(
	CRM				varchar(15),
	Nome			varchar(40),
    Idade			int,
    Especialidade	char(40),
    CPF				varchar(11),
    Data_Nascimento	date
);

CREATE TABLE IF NOT EXISTS Pacientes(
	RG					varchar(9),
	Nome				varchar(40),
    Data_Nascimento		date,
    Cidade				varchar(30),
    Doenca				varchar(40),
    Plano_Saude			varchar(40)
       
);

CREATE TABLE IF NOT EXISTS Funcionarios(
	Matricula			varchar(15),
	Nome				varchar(40),
    Data_Nascimento		date,
    Data_Admissao		date,
    Cargo				varchar(40),
    Salario				decimal(10,2)
    
);

CREATE TABLE IF NOT EXISTS Consultas(
	Codigo_Consulta	int,
    data_horario	datetime
);

