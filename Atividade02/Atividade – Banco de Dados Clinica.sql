-- Isto é um comentário
-- Criar um Banco de Dados clinica
CREATE DATABASE clinica_turmaA;

-- Ativar o banco de dados
USE clinica_turmaA;

-- Criar tabela Sala
CREATE TABLE sala(
	numero_sala INT NOT NULL,
    andar INT NOT NULL,
    CHECK(numero_sala > 1 and numero_sala < 50),
    CHECK(andar < 12)
);

CREATE TABLE medicos(
	crm VARCHAR(15) UNIQUE NOT NULL,
	nome VARCHAR(40) NOT NULL,
    idade INT,
    CHECK(idade > 23),
	especialidade CHAR(20) NOT NULL DEFAULT "ORTOPEDIA",
    cpf CHAR(11) NOT NULL,
    data_admissao DATE NOT NULL
);


CREATE TABLE pacientes(
	rg CHAR(9) UNIQUE NOT NULL,
    nome VARCHAR(40) NOT NULL,
    data_nascimento DATE NOT NULL,
    cidade VARCHAR(30) DEFAULT "ITABUNA",
    doenca VARCHAR(40) NOT NULL,
    plano_saude VARCHAR(40) NOT NULL DEFAULT "SUS"
);

CREATE TABLE funcionarios(
	matricula VARCHAR(15),
    nome VARCHAR(40) NOT NULL,
    data_nascimento  DATE NOT NULL,
    data_admissao DATE NOT NULL,
    cargo VARCHAR(40) NOT NULL DEFAULT "ASSISTENTE MEDICO",
    salario FLOAT NOT NULL DEFAULT "510"
);

CREATE TABLE consultas(
	codigo_consulta INT UNIQUE NOT NULL,
    data_horario DATETIME
);