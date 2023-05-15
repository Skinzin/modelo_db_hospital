-- Insert Table

INSERT INTO tbl_especialidade(especialdiade) VALUES ('Pediatria'), ('Clínica Geral'), ('Gastrenterologia'), ('Dermatologia'), ('Cardiologia'), ('Endocrinologia'), ('Ortopedia');
INSERT INTO tbl_tipo_med(tipo) VALUES("Generalistas"), ("Especialistas"), ("Residentes");
INSERT INTO tbl_status(`status`) VALUES("Ativo"), ("Inativo"), ("Pendente");

INSERT INTO tbl_hospital(nome, endereco) VALUES("São Lucas", "Carlos Exemplo's, 73, Flores, SP - 0000-001"), ("Hospital Santa Clara", "Maria Campo, 29, Flores - 0000-006"), ("Nossa Senhora das Graças", "Nossa Senhora, 23, Santa, SP - 0000-123");

INSERT INTO tbl_medico(nome, crm, id_tipo, id_especialidade) VALUES 
("Maria Clara", 123456, 2, 2), 
("Ana Silva", 233456, 2, 7), 
("Tiago Cardoso", 373456, 3, 2), 
("Anaeli Ferreira", 413456, 2, 2),
("Beatriz Fernandes", 543456, 1, 2),
("Heitor Lamar", 628459, 1, 6),
("Vitor Gabriel", 729956, 2, 4),
("Carlos Almeida", 827856, 3, 3),
("André Fernandes", 926556, 3, 2),
("Laura Silva", 105489, 1, 1);

INSERT INTO tbl_convenio(nome, cnpj, id_status, id_hospital) VALUES
("Saúde Total", "12.345.678/1-1", 1, 1),
("Bem-Estar Mais", "98.765.432/1-2", 1, 2),
("Plano Saúde Premium", "78.901.234/1-4", 3, 3),
("Vida Saudável", "45.678.901/1-3", 2, 1);

INSERT INTO tbl_paciente(nome, endereco, id_convenio) VALUES 
("João Santos", "Carlos Exemplo's, 23, Flores, SP - 0000-001", 1),
("Mariana Costa", "Av Campos, 1233, Campos Verde, SP - 0000-002", 1),
("Felipe Silva", "Capim Reto, 1, Jardim Almeida, SP - 0000-003", 1),
("Letícia Almeida", "Beco Amarelo, 39, Freguesia ABS, SP - 0000-004", 2),
("Rafael Oliveira", "Amarelo Azul, 2, Freguesia ABS, SP - 0000-005", 2),
("Carolina Pereira", "Maria Campos, 3, Flores, SP - 0000-006", 3),
("Matias Mendes", "Av Completo Exemplo, 78, Coqueiro - 0000-007", 2),
("Larissa Cardoso", "Maria Campo, 29, Flores - 0000-006", 1),
("Samuel Rodrigues", "Pedra Grande, 18, Flores - 0000-009", 1),
("Manuela Fernandes", "Cachoeira Verde, 28, Aquarela - 0000-010", 1),
("Daniel Lopes", "Abobora Azeda, 19, Dominic - 0000-011", 3),
("Valentina Castro", "Bombom Azul, 30, Chacara Campinas - 0000-012", 4),
("Victor Nunes", "Clara Maria, 76, Campos Azul -0000-013", 4),
("Helena Sousa", "Camp's Rold, 113, Arthur Vender -0000-014", 1),
("Guilherme Carvalho", "Street View Exemplo, 1445, Street View - 0000-015", 4);

INSERT INTO tbl_consulta (`data`, valor, id_medico, id_paciente, id_conv) VALUES
('2015-02-10 10:30:00', 250.00, 2, 1, null),
('2016-07-20 14:00:00', 150.00, 2, 2, 2),
('2017-09-05 16:30:00', 120.00, 3, 3, null),
('2018-04-15 11:00:00', 200.00, 4, 4, 2),
('2019-11-12 14:30:00', 180.00, 5, 5, 1),
('2020-03-25 09:00:00', 300.00, 6, 6, 1),
('2021-08-03 16:00:00', 250.00, 7, 7, 3),
('2015-06-18 10:30:00', 150.00, 8, 8, 1),
('2016-10-27 14:00:00', 120.00, 9, 9, 4),
('2017-12-08 11:00:00', 200.00, 10, 10, 2),
('2018-08-19 14:30:00', 180.00, 1, 11, 1),
('2019-02-28 09:00:00', 300.00, 2, 12, 2),
('2020-05-13 16:00:00', 250.00, 3, 13, 1),
('2015-09-22 10:30:00', 150.00, 4, 14, 3),
('2016-03-05 14:00:00', 120.00, 5, 15, 4),
('2017-05-17 11:00:00', 200.00, 6, 1, 1),
('2018-11-29 14:30:00', 180.00, 7, 14, 2),
('2019-04-02 09:00:00', 300.00, 8, 9, 3),
('2020-06-19 16:00:00', 250.00, 9, 2, 4),
('2021-10-30 10:30:00', 150.00, 10, 1, 1);

INSERT INTO tbl_receita (uso, id_consulta) VALUES
('Tomar 1 comprimido de manhã e 1 comprimido à noite', 1),
('Aplicar pomada na área afetada duas vezes ao dia', 2),
('Tomar 2 colheres de sopa antes das refeições', 3),
('Ingerir 1 cápsula diariamente', 4),
('Aplicar loção nas mãos e nos pés todas as noites', 5),
('Tomar 1 comprimido a cada 8 horas', 6),
('Tomar 1 comprimido antes de dormir', 7),
('Ingerir 1 colher de chá após as refeições', 8),
('Aplicar creme no rosto duas vezes ao dia', 9),
('Tomar 1 comprimido pela manhã', 10);

INSERT INTO tbl_remedio (nome, qnt, id_receita) VALUES
('Dipirona', 30.0, 1),
('Zopidem', 30.0, 1),
('Hipoglos', 20.0, 2),
('Babymed', 20.0, 2),
('Sopa', 60.0, 3),
('Fluconazol', 90.0, 4),
('Zelix', 90.0, 4),
('Dersani', 15.0, 5),
('Cerave', 90.0, 5),
('Dipirona 1G', 50.0, 6),
('Zopidem', 50.0, 6),
('Dipirona 500g', 50.0, 7),
('Chá A', 60.0, 8),
('Chá B', 60.0, 8),
('Creme ABC', 30.0, 9),
('Creme de rosto', 60.0, 9),
('Neosaldina', 25.0, 10),
('Novalgina', 10.0, 10);


INSERT INTO tbl_documentos(data_nasc, cpf, rg, id_user) VALUES
('2007-01-10', '11111111111', '123456789', 1),
('1992-05-15', '22222222222', '987654321', 2),
('2013-09-20', '33333333333', '654321987', 3),
('1998-03-08', '44444444444', '321987654', 4),
('1990-11-25', '55555555555', '789456123', 5),
('1977-07-03', '66666666666', '456123789', 6),
('1995-02-18', '77777777777', '987123654', 7),
('1982-12-12', '88888888888', '321654987', 8),
('1988-06-30', '99999999999', '789321654', 9),
('1993-08-22', '10101010101', '654789321', 10),
('1983-04-05', '12121212121', '321456789', 11),
('1996-10-29', '13131313131', '789654321', 12),
('1991-11-14', '14141414141', '456987123', 13),
('1979-05-01', '15151515151', '987654123', 14),
('1987-09-09', '16161616161', '321789654', 15);


INSERT INTO tbl_enfermeiro (nome, cre) VALUES
  ('Mariana Silva', '12345678'),
  ('Rafael Santos', '87654321'),
  ('Carolina Oliveira', '23456789'),
  ('Bruno Souza', '98765432'),
  ('Amanda Costa', '34567890'),
  ('Diego Rodrigues', '09876543'),
  ('Juliana Ferreira', '45678901'),
  ('Lucas Almeida', '10987654'),
  ('Larissa Carvalho', '56789012'),
  ('Gustavo Mendes', '21098765');


INSERT INTO tbl_tipo_quarto(`desc`, valor_diaria) VALUES
('Apartamento', 500.00),
('Quarto Duplo', 300.00),
('Enfermaria', 150.00);

INSERT INTO tbl_quarto(numero, id_tipo) VALUES
(101, 1),
(102, 1),
(201, 2),
(202, 2),
(301, 3),
(302, 3);

SELECT * from tbl_quarto;

INSERT INTO tbl_internacao (data_entrada, data_prev, data_alta, procedimento, id_paciente, id_medico, id_quarto, id_enfermeiro) VALUES
('2016-03-12 10:00:00', '2016-03-18', '2016-03-19 14:00:00', 'Cirurgia de Apendicite', 1, 1, 1, 1),
('2018-06-05 09:30:00', '2018-06-10', '2018-06-15 11:00:00', 'Tratamento de Fratura', 2, 2, 2, 2),
('2017-09-20 14:15:00', '2017-09-25', '2017-09-28 09:30:00', 'Cirurgia Cardíaca', 3, 3, 3, 3),
('2020-01-10 11:30:00', '2020-01-15', '2020-01-20 16:45:00', 'Tratamento de Lesão', 4, 4, 4, 4),
('2019-05-15 08:00:00', '2019-05-20', '2019-05-22 13:15:00', 'Cirurgia de Hérnia', 5, 5, 5, 5),
('2021-03-08 12:45:00', '2021-03-12', '2021-03-16 10:30:00', 'Tratamento de Infecção', 6, 6, 6, 6),
('2018-09-25 16:30:00', '2018-09-30', '2018-10-03 08:45:00', 'Cirurgia de Catarata', 7, 7, 5, 7),
('2020-03-12 10:00:00', '2016-03-18', '2020-03-29 14:00:00', 'Tratamento de Fratura', 1, 1, 2, 3),
('2019-09-20 14:15:00', '2017-09-25', '2019-10-28 09:30:00', 'Tratamento de Infecção', 3, 2, 2, 1);



-- Em atividade
ALTER TABLE tbl_medico ADD em_atividade INT default 1;
ALTER TABLE tbl_medico ADD FOREIGN KEY (em_atividade) REFERENCES tbl_status(id);

UPDATE tbl_medico SET em_atividade = 2 WHERE id = 1 AND id = 2;

-- Querys
-- Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.
SELECT *, (SELECT AVG(valor) FROM tbl_consulta WHERE `data` LIKE "%2020%" AND id_conv > 0) AS media FROM tbl_consulta WHERE `data` LIKE "%2020%" AND id_conv > 0;

-- Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.
SELECT * FROM tbl_internacao WHERE data_prev < data_alta;


-- Receituário completo da primeira consulta registrada com receituário associado.
SELECT c.*, r.uso, m.nome AS nome_remedio, m.qnt FROM tbl_consulta AS c 
JOIN tbl_receita AS r ON c.id = r.id_consulta
JOIN tbl_remedio AS m ON r.id = m.id_receita WHERE c.id = 1;

-- Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio).
SELECT c.* FROM tbl_consulta AS c WHERE c.id_conv IS NULL ORDER BY c.valor DESC LIMIT 1; -- Maior
SELECT c.* FROM tbl_consulta AS c WHERE c.id_conv IS NULL ORDER BY c.valor ASC LIMIT 1; -- Menor


SELECT * FROM tbl_internacao;

-- Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a entrada e a alta.
SELECT i.*, q.numero, t.valor_diaria, DATEDIFF(i.data_alta, i.data_entrada) AS dias_estadia, (t.valor_diaria * DATEDIFF(i.data_alta, i.data_entrada)) AS total_internacao FROM tbl_internacao AS i
JOIN tbl_quarto AS q ON i.id_quarto = q.id
JOIN tbl_tipo_quarto AS t ON q.id_tipo = t.id;

-- Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.
SELECT i.data_entrada, i.procedimento, q.numero FROM tbl_internacao AS i
JOIN tbl_quarto AS q ON i.id_quarto = q.id
JOIN tbl_tipo_quarto AS t ON q.id_tipo = t.id WHERE t.desc LIKE 'apartamento';

-- Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.
SELECT p.nome AS nome_paciente, m.nome AS nome_medico, i.data_entrada, i.procedimento
FROM tbl_internacao AS i
JOIN tbl_paciente AS p ON i.id_paciente = p.id
JOIN tbl_medico AS m ON i.id_medico = m.id
JOIN tbl_especialidade AS e ON m.id_especialidade = e.id
JOIN tbl_quarto AS q ON i.id_quarto = q.id
JOIN tbl_tipo_quarto AS tq ON q.id_tipo = tq.id
WHERE e.especialdiade = 'gastroenterologia' AND tq.`desc` = 'enfermaria';

-- Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.
SELECT m.nome AS nome_medico, m.crm, COUNT(c.id) AS quantidade_consultas FROM tbl_medico AS m LEFT JOIN tbl_consulta AS c ON m.id = c.id_medico GROUP BY m.id;

-- Todos os médicos que tenham "Gabriel" no nome. 
SELECT * FROM tbl_medico WHERE nome LIKE '%Gabriel%';

-- Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.
SELECT e.nome, e.cre, COUNT(*) AS num_internacoes FROM tbl_enfermeiro AS e INNER JOIN tbl_internacao i ON e.id = i.id_enfermeiro GROUP BY e.nome, e.cre HAVING COUNT(*) > 1;





