-- =============================
-- POPULAMENTO DO BANCO DETRAN
-- =============================

INSERT INTO CATEGORIA (id) VALUES
(10), -- Automóvel
(20), -- Motocicleta
(30), -- Caminhão
(40), -- Ônibus
(50); -- Utilitário

INSERT INTO MODELO (id) VALUES
(100001), -- GOL 1.6
(100002), -- UNO 1.0
(100003), -- CIVIC 2.0
(100004), -- STRADA 1.4
(100005); -- CG 160

INSERT INTO PROPRIETARIO (nome, cpf, telefone, bairro, cidade, estado, data_de_nascimento, sexo) VALUES
('Mariana Costa', '12345678901', '61999990001', 'Asa Norte', 'Brasília', 'DF', '1985-06-12', 'M'),
('Ana Mariana', '98765432100', '61988887777', 'Taguatinga', 'Brasília', 'DF', '1990-03-25', 'F'),
('Mariana Lima', '45678912345', '61990001111', 'Ceilândia', 'Brasília', 'DF', '1978-12-01', 'M'),
('Mariana Brito', '32165498700', '61995556666', 'Guará', 'Brasília', 'DF', '2000-09-14', 'F'),
('Maria Luiza','74185296300', '61991112222', 'Sobradinho', 'Brasília', 'DF', '1995-04-08', 'M');

INSERT INTO VEICULO (placa, cor, ano, categoria, modelo, proprietario) VALUES
('ABC1A23', 'PRATA', 2018, 10, 100001, 1),
('XYZ9Z99', 'VERMEL', 2020, 20, 100005, 2),
('JKL2B45', 'PRETO', 2015, 30, 100004, 3),
('MNO7C88', 'BRANCO', 2019, 10, 100003, 4),
('QWE5D77', 'AZUL', 2022, 50, 100002, 5);

INSERT INTO INFRACAO (preco) VALUES
(293.47),   -- avanço sinal vermelho
(130.16),   -- estacionamento irregular
(195.23),   -- excesso de velocidade leve
(880.41),   -- dirigir alcoolizado
(293.47);   -- não uso de cinto

INSERT INTO LOCAL (latitude, longitude) VALUES
(-15.7801, -47.9292),
(-15.8100, -47.9500),
(-15.7500, -47.9200),
(-15.8000, -47.9400),
(-15.7700, -47.9300);

INSERT INTO AGENTE (nome, data_de_contratacao) VALUES
('Carlos Almeida', '2015-04-10'),
('Fernanda Silva', '2018-06-20'),
('João Pereira', '2010-01-15'),
('Mariana Costa', '2012-09-05'),
('Ricardo Santos', '2020-02-17');

INSERT INTO COMETE (proprietario, infracao, data) VALUES
(1, 1, '2024-01-10'),
(2, 3, '2024-02-22'),
(3, 2, '2024-03-15'),
(4, 4, '2024-05-30'),
(5, 5, '2024-07-19');

INSERT INTO REGISTRO (agente, infracao, proprietario, local) VALUES
(1, 1, 1, 1),
(2, 3, 2, 2),
(3, 2, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

