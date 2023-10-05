
CREATE DATABASE meu_segundo_DB;
USE meu_segundo_DB;
-- Exercicio 01
CREATE TABLE paises(
	country_id CHAR(4) NOT NULL PRIMARY KEY,
    country_name VARCHAR(40) NOT NULL,
    region_id CHAR(5)
);

-- Exercicio 02
CREATE TABLE IF NOT EXISTS paises(
	country_id CHAR(4) NOT NULL PRIMARY KEY,
    country_name VARCHAR(40) NOT NULL,
    region_id CHAR(5)
);

-- Exercicio 03
CREATE TABLE IF NOT EXISTS dup_countries LIKE paises; -- Cria uma tabela idêntica á tabela PAISES
-- Exercicio 06
CREATE TABLE jobs(
	job_id VARCHAR(10) NOT NULL,
    job_title VARCHAR(40) NOT NULL,
    min_salary DECIMAL(6,2) NOT NULL,
    max_salary DECIMAL(6,2) NOT NULL,
    CHECK(max_salary <=25000)
);

-- Exercicio 07

CREATE TABLE countries(
	country_id VARCHAR(2) NOT NULL PRIMARY KEY,
    country_name VARCHAR(40) NOT NULL,
    region_id CHAR(5),
    CHECK(country_name IN ('Italia','India','China'))
);

-- Exercicio 08

CREATE TABLE job_history(
	employee_id INT AUTO_INCREMENT PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10),
    department_id VARCHAR(5) NOT NULL,
    CHECK(end_date LIKE '--/--/----')
);

-- Exercicio 09

CREATE TABLE countries_3(
	country_id VARCHAR(2) NOT NULL UNIQUE,
    country_name VARCHAR(40) NOT NULL,
    region_id CHAR(5)
);

-- Exercicio
CREATE TABLE jobs2(
	job_id VARCHAR(10) NOT NULL UNIQUE,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);