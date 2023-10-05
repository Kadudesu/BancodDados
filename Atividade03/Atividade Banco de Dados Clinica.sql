DROP DATABASE clinica;

CREATE DATABASE clinica_turma_a;

USE clinica_turma_a;

CREATE TABLE sala(
	num_sala INT NOT NULL UNIQUE,
    andar INT NOT NULL UNIQUE,
    CHECK(num_sala >= 1 AND num_sala <= 50),
    CHECK(andar >= 1 AND andar <= 12),
    PRIMARY KEY (num_sala)
);

CREATE TABLE paciente(
	rg CHAR(9) UNIQUE NOT NULL,
    nome VARCHAR(40) NOT NULL,
    data_nascimento DATE NOT NULL,
    cidade VARCHAR(30) NOT NULL DEFAULT "Itabuna",
    doenca VARCHAR(40) NOT NULL,
    plano_saude VARCHAR(40) NOT NULL DEFAULT "SUS",
    PRIMARY KEY(rg)
);

CREATE TABLE funcionarios(
	matricula VARCHAR(15) NOT NULL UNIQUE,
    nome VARCHAR(40) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_admissao DATE NOT NULL,
    cargo VARCHAR(40) NOT NULL DEFAULT "Assistente Médico",
    salario  FLOAT NOT NULL DEFAULT 510.00,
    PRIMARY KEY (matricula)
);

CREATE TABLE medicos(
	crm VARCHAR(15) NOT NULL UNIQUE,
    nome VARCHAR (40) NOT NULL,
    idade INT NOT NULL,
    espe VARCHAR (40) NOT NULL DEFAULT "Ortopedia",
    CPF CHAR(11) NOT NULL UNIQUE,
	data_admissao DATE,
    num_sala INT NOT NULL,
    matricula VARCHAR(15) NOT NULL UNIQUE,
    CHECK(idade >= 23),
    PRIMARY KEY (crm),
    FOREIGN KEY (num_sala) REFERENCES sala(num_sala),
    FOREIGN KEY (matricula) REFERENCES funcionarios(matricula)
);

CREATE TABLE consulta(
	codigo_consulta INT UNIQUE NOT NULL,
    data_horario DATETIME,
    PRIMARY KEY(codigo_consulta),
    crm VARCHAR(15) NOT NULL UNIQUE,
    rg CHAR(9) UNIQUE NOT NULL,
    FOREIGN KEY (crm) REFERENCES medicos(crm),
    FOREIGN KEY (rg) REFERENCES paciente(rg)
);
