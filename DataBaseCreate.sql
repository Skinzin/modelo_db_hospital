CREATE DATABASE IF NOT EXISTS hospital;
use hospital;


-- Create Tables
CREATE TABLE IF NOT EXISTS tbl_status (
  id INT AUTO_INCREMENT PRIMARY KEY,
  `status` VARCHAR(45) NULL
);

CREATE TABLE IF NOT EXISTS tbl_hospital (
  id INT PRIMARY KEY auto_increment,
  nome VARCHAR(120) NOT NULL,
  endereco VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_convenio (
  id INT PRIMARY KEY auto_increment,
  nome VARCHAR(125) NOT NULL,
  cnpj VARCHAR(14) NOT NULL,
  id_status INT NULL DEFAULT 1,
  id_hospital INT
);

CREATE TABLE IF NOT EXISTS tbl_paciente (
  id INT PRIMARY KEY auto_increment,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(255) NOT NULL,
  id_convenio INT NULL
);

CREATE TABLE IF NOT EXISTS tbl_tipo_med (
  id INT  PRIMARY KEY auto_increment,
  tipo VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS tbl_especialidade (
  id INT PRIMARY KEY auto_increment,
  especialdiade VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS tbl_medico (
  `id` INT PRIMARY KEY auto_increment,
  `nome` VARCHAR(45) NOT NULL,
  `crm` INT NOT NULL,
  `id_tipo` INT NOT NULL,
  `id_especialidade` INT NOT NULL
  );
  
CREATE TABLE IF NOT EXISTS tbl_med_workin_hospital (
	id INT primary key auto_increment,
    id_medico INT,
    id_hospital INT
);
  
CREATE TABLE IF NOT EXISTS tbl_contato (
  `id` INT PRIMARY KEY auto_increment,
  `telefone` VARCHAR(12) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `id_user` INT
  );
  
CREATE TABLE IF NOT EXISTS tbl_consulta (
  id INT PRIMARY KEY auto_increment,
  data DATETIME,
  valor FLOAT,
  id_medico INT,
  id_paciente INT,
  id_conv INT
  );
  
CREATE TABLE IF NOT EXISTS tbl_diagnostico (
  id INT PRIMARY KEY auto_increment,
  resultado VARCHAR(225) ,
  id_consulta INT
  );

CREATE TABLE IF NOT EXISTS tbl_receita (
  id INT PRIMARY KEY auto_increment,
  uso VARCHAR(255),
  id_consulta INT
  );
  
CREATE TABLE IF NOT EXISTS tbl_remedio(
	id INT primary key auto_increment,
    nome VARCHAR(28),
    qnt FLOAT,
    id_receita INT
);
  
CREATE TABLE IF NOT EXISTS tbl_tipo_quarto (
  id INT PRIMARY KEY auto_increment,
  `desc` VARCHAR(255),
  valor_diaria FLOAT
  );

CREATE TABLE IF NOT EXISTS tbl_quarto (
  id INT PRIMARY KEY auto_increment,
  numero INT,
  id_tipo INT
  );

CREATE TABLE IF NOT EXISTS tbl_enfermeiro (
  id INT PRIMARY KEY auto_increment,
  nome VARCHAR(45),
  id_doc INT,
  cre VARCHAR(8)
);

CREATE TABLE IF NOT EXISTS tbl_internacao (
  id INT PRIMARY KEY auto_increment,
  data_entrada DATETIME,
  data_prev DATE,
  data_alta DATETIME,
  procedimento VARCHAR(255),
  id_paciente INT,
  id_medico INT,
  id_quarto INT,
  id_enfermeiro INT
);

CREATE TABLE IF NOT EXISTS tbl_documentos (
  id INT PRIMARY KEY auto_increment,
  data_nasc DATE,
  cpf VARCHAR(11),
  rg VARCHAR(9),
  id_user INT
);


-- Add Foreign Key;
ALTER TABLE tbl_convenio ADD FOREIGN KEY (id_hospital) REFERENCES tbl_hospital(id);
ALTER TABLE tbl_convenio ADD FOREIGN KEY (id_status) REFERENCES tbl_status(id);
ALTER TABLE tbl_paciente ADD FOREIGN KEY (id_convenio) REFERENCES tbl_convenio(id);
ALTER TABLE tbl_medico ADD FOREIGN KEY (id_tipo) REFERENCES tbl_tipo_med(id);
ALTER TABLE tbl_medico ADD FOREIGN KEY (id_especialidade) REFERENCES tbl_especialidade(id);
ALTER TABLE tbl_contato ADD FOREIGN KEY (id_user) REFERENCES tbl_paciente(id);
ALTER TABLE tbl_consulta ADD FOREIGN KEY (id_medico) REFERENCES tbl_medico(id);
ALTER TABLE tbl_consulta ADD FOREIGN KEY (id_paciente) REFERENCES tbl_paciente(id);
ALTER TABLE tbl_consulta ADD FOREIGN KEY (id_conv) REFERENCES tbl_convenio(id);
ALTER TABLE tbl_diagnostico ADD FOREIGN KEY (id_consulta) REFERENCES tbl_consulta(id);
ALTER TABLE tbl_receita ADD FOREIGN KEY (id_consulta) REFERENCES tbl_consulta(id);
ALTER TABLE tbl_remedio ADD FOREIGN KEY (id_receita) REFERENCES tbl_receita(id);
ALTER TABLE tbl_quarto ADD FOREIGN KEY (id_tipo) REFERENCES tbl_tipo_quarto(id);
ALTER TABLE tbl_enfermeiro ADD FOREIGN KEY (id_doc) REFERENCES tbl_documentos(id);
ALTER TABLE tbl_internacao ADD FOREIGN KEY (id_quarto) REFERENCES tbl_quarto(id);
ALTER TABLE tbl_internacao ADD FOREIGN KEY (id_enfermeiro) REFERENCES tbl_enfermeiro(id);
ALTER TABLE tbl_internacao ADD FOREIGN KEY (id_paciente) REFERENCES tbl_paciente(id);
ALTER TABLE tbl_internacao ADD FOREIGN KEY (id_medico) REFERENCES tbl_medico(id);
ALTER TABLE tbl_documentos ADD FOREIGN KEY (id_user) REFERENCES tbl_paciente(id);
ALTER TABLE tbl_med_workin_hospital ADD FOREIGN KEY (id_medico) REFERENCES tbl_medico(id);
ALTER TABLE tbl_med_workin_hospital ADD FOREIGN KEY (id_hospital) REFERENCES tbl_hospital(id);

