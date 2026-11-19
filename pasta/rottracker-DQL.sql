-- Quais produtos já venceram e há quantos dias? (WHERE, ORDER BY, cálculo no SELECT)

SELECT p.descricao,
       p.validade,
       TRUNC(SYSDATE) - p.validade AS dias_vencido
FROM tb_produtos p
WHERE p.validade < TRUNC(SYSDATE)
ORDER BY dias_vencido DESC;

-- Quais produtos vencem nos próximos 3 dias? (WHERE com BETWEEN, ORDER BY, cálculo no SELECT)

SELECT p.descricao,
       p.validade,
       p.validade - TRUNC(SYSDATE) AS dias_restantes
FROM tb_produtos p
WHERE p.validade BETWEEN TRUNC(SYSDATE) AND TRUNC(SYSDATE) + 3
ORDER BY p.validade;

-- Quantos produtos cada despensa tem? (INNER JOIN, COUNT, GROUP BY)

SELECT d.nome AS despensa,
       d.tipo,
       COUNT(p.produto_id) AS total_produtos
FROM tb_despensas d
INNER JOIN tb_produtos p ON p.despensa_id = d.despensa_id
GROUP BY d.nome, d.tipo
ORDER BY total_produtos DESC;

-- Quais despensas não têm nenhum produto? (LEFT JOIN)
SELECT d.nome AS despensa,
       d.tipo
FROM tb_despensas d
LEFT JOIN tb_produtos p ON p.despensa_id = d.despensa_id
WHERE p.produto_id IS NULL
ORDER BY d.nome;

-- Quantos produtos tem cada categoria, inclusive as vazias? (RIGHT JOIN, COUNT, GROUP BY)
SELECT c.nome AS categoria,
       COUNT(p.produto_id) AS total_produtos
FROM tb_produtos p
RIGHT JOIN tb_categorias c ON c.categoria_id = p.categoria_id
GROUP BY c.nome
ORDER BY total_produtos DESC, c.nome;

-- Quem participa de cada despensa e com qual permissão? (INNER JOIN em 3 tabelas, ORDER BY)
SELECT d.nome AS despensa,
       u.nome AS usuario,
       m.permissao,
       m.data_entrada
FROM tb_membros m
INNER JOIN tb_despensas d ON d.despensa_id = m.despensa_id
INNER JOIN tb_usuarios  u ON u.usuario_id  = m.usuario_id
ORDER BY d.nome, m.permissao, u.nome;

-- Quais categorias têm mais de 5 kg de produtos em estoque? (INNER JOIN, SUM, GROUP BY, HAVING)
SELECT c.nome AS categoria,
       COUNT(p.produto_id) AS total_produtos,
       SUM(p.quantidade)   AS total_kg
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.categoria_id = p.categoria_id
WHERE p.unidade = 'KG'
GROUP BY c.nome
HAVING SUM(p.quantidade) > 5
ORDER BY total_kg DESC;

-- Qual o prazo médio, o menor e o maior de validade por categoria? (INNER JOIN, AVG, MIN, MAX, GROUP BY, cálculo no SELECT)
SELECT c.nome AS categoria,
       ROUND(AVG(p.validade - p.data_compra), 1) AS prazo_medio_dias,
       MIN(p.validade - p.data_compra) AS menor_prazo_dias,
       MAX(p.validade - p.data_compra) AS maior_prazo_dias
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.categoria_id = p.categoria_id
GROUP BY c.nome
ORDER BY prazo_medio_dias DESC;

-- Qual produto deve ser consumido primeiro em cada despensa? (SUBSELECT, INNER JOIN, ORDER BY)
SELECT d.nome AS despensa,
       p.descricao,
       p.quantidade,
       p.unidade,
       p.validade
FROM tb_produtos p
INNER JOIN tb_despensas d ON d.despensa_id = p.despensa_id
WHERE p.validade = (SELECT MIN(p2.validade)
                    FROM tb_produtos p2
                    WHERE p2.despensa_id = p.despensa_id)
ORDER BY p.validade;

-- Quais perecíveis estão numa despensa comum, sem refrigeração? (INNER JOIN em 3 tabelas, WHERE, ORDER BY)
SELECT d.nome AS despensa,
       p.descricao,
       c.nome AS categoria,
       p.validade
FROM tb_produtos p
INNER JOIN tb_despensas  d ON d.despensa_id  = p.despensa_id
INNER JOIN tb_categorias c ON c.categoria_id = p.categoria_id
WHERE c.perecivel = 1
  AND d.tipo = 'DESPENSA'
ORDER BY d.nome, p.validade;

-- Quais categorias geram mais desperdício? (INNER JOIN, COUNT, GROUP BY, ORDER BY)
SELECT c.nome AS categoria,
       COUNT(p.produto_id) AS qtd_vencidos
FROM tb_produtos p
INNER JOIN tb_categorias c ON c.categoria_id = p.categoria_id
WHERE p.validade < TRUNC(SYSDATE)
GROUP BY c.nome
ORDER BY qtd_vencidos DESC;