-- =============================
-- CONSULTA DO BANCO DETRAN
-- =============================

-- A
SELECT
    v.id AS id_veiculo,
    v.placa,
    v.cor,
    v.ano,
    v.categoria,
    v.modelo,
    p.id AS id_proprietario,
    p.cpf,
    p.telefone,
    p.bairro,
    p.cidade,
    p.estado,
    p.data_de_nascimento,
    p.sexo
FROM VEICULO v
JOIN PROPRIETARIO p ON v.proprietario = p.id
WHERE p.cpf = '12345678901';

-- B
SELECT
    id,
    nome,
    cpf,
    telefone,
    bairro,
    cidade,
    estado,
    data_de_nascimento,
    sexo
FROM PROPRIETARIO
WHERE nome LIKE '%Maria%';

-- C
SELECT
    c.id AS id_comete,
    c.data AS data_infracao,
    i.id AS id_infracao,
    i.preco AS valor_infracao,
    v.placa,
    v.cor,
    v.ano,
    v.modelo,
    v.categoria,
    p.nome AS nome_proprietario,
    p.cpf
FROM COMETE c
JOIN INFRACAO i ON c.infracao = i.id
JOIN PROPRIETARIO p ON c.proprietario = p.id
JOIN VEICULO v ON v.proprietario = p.id
WHERE c.data BETWEEN '2024-01-01' AND '2024-03-31';

-- D
SELECT
    v.modelo,
    COUNT(v.id) AS total_veiculos
FROM VEICULO v
GROUP BY v.modelo
ORDER BY total_veiculos DESC;

