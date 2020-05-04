-- Geração de Modelo físico 
-- Database: academiadatabase
-- Author: Alexandre RA 2143356


CREATE TABLE Pessoa (
nome VARCHAR(10),
RG VARCHAR(10),
CPF VARCHAR(10) PRIMARY KEY,
data_nascimento VARCHAR(10)
);

CREATE TABLE Funcionario (
salario_base VARCHAR(10),
id VARCHAR(10) PRIMARY KEY,
CPF VARCHAR(10),
FOREIGN KEY(CPF) REFERENCES Pessoa (CPF)
);

CREATE TABLE Atendente (
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Funcionario (id)
);

CREATE TABLE PersonalTrainer (
id VARCHAR(10),
codigo VARCHAR(10),
FOREIGN KEY(id) REFERENCES Funcionario (id)
);

CREATE TABLE Administrativo (
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES Funcionario (id)
);



CREATE TABLE AulaAgendada (
horario VARCHAR(10),
frequencia VARCHAR(10),
turma VARCHAR(10),
codigo VARCHAR(10) PRIMARY KEY,
comissao VARCHAR(10)
);

CREATE TABLE AulaLivre (
codigo VARCHAR(10) PRIMARY KEY
);

CREATE TABLE PlanoCliente (
mensalidade VARCHAR(10),
pagamentos VARCHAR(10),
id VARCHAR(10),
CPF VARCHAR(10),
PRIMARY KEY(id,id),
FOREIGN KEY(CPF) REFERENCES Pessoa (CPF)
);

CREATE TABLE telefone (
telefone_PK INTEGER PRIMARY KEY,
telefone VARCHAR(10)
);

CREATE TABLE Endereco (
Endereco_PK INTEGER PRIMARY KEY,
Rua VARCHAR(10),
Bairro VARCHAR(10),
Cidade VARCHAR(10),
CPF_FK VARCHAR(),
FOREIGN KEY(CPF_FK) REFERENCES Pessoa (CPF)
);

CREATE TABLE AulaAgendadaExercicios  (
_PK INTEGER PRIMARY KEY,
exercicio1 VARCHAR(10),
exercicio2 VARCHAR(10),
exercicio3 VARCHAR(10),
codigo_FK VARCHAR(),
FOREIGN KEY(codigo_FK) REFERENCES AulaAgendada (codigo)
);

CREATE TABLE adesao (
id VARCHAR(10),
FOREIGN KEY() REFERENCES PlanoCliente (id,id)
);

CREATE TABLE venda (
comissao VARCHAR(10),
id VARCHAR(10),
id VARCHAR(10),
FOREIGN KEY(id) REFERENCES PlanoCliente (id),
    FOREIGN KEY(id) REFERENCES Atendente (id)
);

ALTER TABLE PersonalTrainer ADD FOREIGN KEY(codigo) REFERENCES Aula Agendada (codigo)
