
/* USUARIO */
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Ana Silva',       'ana@email.com',       'ATIVO',      'hash_ana');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Bruno Costa',     'bruno@email.com',     'ATIVO',      'hash_bruno');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Carla Souza',     'carla@email.com',     'ATIVO',      'hash_carla');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Diego Lima',      'diego@email.com',     'ATIVO',      'hash_diego');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Elisa Rocha',     'elisa@email.com',     'INATIVO',    'hash_elisa');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Felipe Alves',    'felipe@email.com',    'ATIVO',      'hash_felipe');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Gabriela Nunes',  'gabriela@email.com',  'ATIVO',      'hash_gabriela');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Henrique Dias',   'henrique@email.com',  'DESATIVADO', 'hash_henrique');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('Isabela Martins', 'isabela@email.com',   'ATIVO',      'hash_isabela');
INSERT INTO tb_usuarios (nome, email, status, senha_hash) VALUES ('João Pereira',    'joao@email.com',      'ATIVO',      'hash_joao');

/* CATEGORIA */

INSERT INTO tb_categorias (nome, perecivel) VALUES ('Carnes', 1);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Laticínios', 1);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Frutas', 1);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Verduras e legumes', 1);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Grãos', 0);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Condimentos', 0);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Bebidas', 0);
INSERT INTO tb_categorias (nome, perecivel) VALUES ('Outros', 1);

/* DESPENSAS */

INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Geladeira da casa',       'GELADEIRA',  DATE '2026-10-20');
INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Congelador da casa',      'CONGELADOR', DATE '2026-10-20');
INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Despensa do apê',         'DESPENSA',   DATE '2026-10-30');
INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Geladeira do escritório', 'GELADEIRA',  DATE '2026-11-14');
INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Geladeira da república',  'GELADEIRA',  DATE '2026-10-10');
INSERT INTO tb_despensas (nome, tipo, data_criacao) VALUES ('Despensa do sítio',       'DESPENSA',   DATE '2026-11-04');

/* MEMBROS */

INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('ADMIN',  DATE '2026-10-20', 1, 1);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-10-25', 1, 2);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-11-07', 1, 4);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('ADMIN',  DATE '2026-10-20', 2, 1);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-10-30', 2, 2);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('ADMIN',  DATE '2026-10-30', 3, 3);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-11-09', 3, 1);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-11-11', 3, 5);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('ADMIN',  DATE '2026-10-10', 5, 6);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-10-15', 5, 7);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('MEMBRO', DATE '2026-11-01', 5, 9);
INSERT INTO tb_membros (permissao, data_entrada, despensa_id, usuario_id) VALUES ('ADMIN',  DATE '2026-11-04', 6, 10);

/* PRODUTOS */
/* geladeira 1 */

INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Leite integral',    2,   'L',  'UN',    DATE '2026-11-14', DATE '2026-11-18', 0, 1, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Iogurte natural',   4,   'G',  'UN',    DATE '2026-11-16', DATE '2026-11-21', 0, 1, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Peito de frango',   2,   'KG', 'UN',    DATE '2026-11-18', DATE '2026-11-21', 0, 1, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Maçã',              1,   'KG', 'CAIXA', DATE '2026-11-17', DATE '2026-11-29', 0, 1, 3);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Alface',            1,   'G',  'UN',    DATE '2026-11-15', DATE '2026-11-17', 0, 1, 4);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Queijo mussarela',  500, 'G',  'UN',    DATE '2026-11-13', DATE '2026-11-28', 0, 1, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Presunto fatiado', 300, 'G',  'UN',    DATE '2026-11-17', DATE '2026-11-22', 0, 1, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Tomate',            1,   'KG', 'UN',    DATE '2026-11-16', DATE '2026-11-23', 0, 1, 4);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Requeijão',         200, 'G',  'UN',    DATE '2026-11-09', DATE '2026-11-16', 0, 1, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Banana',            2,   'KG', 'UN',    DATE '2026-11-17', DATE '2026-11-20', 0, 1, 3);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Cenoura',           1,   'KG', 'UN',    DATE '2026-11-14', DATE '2026-11-25', 0, 1, 4);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Suco de laranja',   1,   'L',  'UN',    DATE '2026-11-15', DATE '2026-11-24', 0, 1, 7);

/* geladeira 2*/

INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Carne moída',         1, 'KG', 'UN',    DATE '2026-11-09', DATE '2027-02-07', 1, 2, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Hambúrguer',          2, 'KG', 'CAIXA', DATE '2026-10-30', DATE '2027-01-18', 1, 2, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Frango empanado',      1, 'KG', 'UN',    DATE '2026-11-04', DATE '2027-01-28', 1, 2, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Filé de tilápia',      2, 'KG', 'UN',    DATE '2026-11-11', DATE '2027-02-17', 1, 2, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Sorvete de chocolate', 2, 'L',  'CAIXA', DATE '2026-11-12', DATE '2027-03-19', 1, 2, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Polpa de morango',   500, 'G',  'UN',    DATE '2026-11-07', DATE '2027-02-27', 1, 2, 3);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Brócolis congelado',  1, 'KG', 'UN',    DATE '2026-11-10', DATE '2027-02-12', 1, 2, 4);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Pão de queijo',        1, 'KG', 'CAIXA', DATE '2026-11-16', DATE '2027-01-18', 1, 2, 8);

/* despensa 3 */

INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Arroz',            5,   'KG', 'UN',    DATE '2026-10-20', DATE '2027-09-15', 0, 3, 5);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Feijão',           2,   'KG', 'UN',    DATE '2026-10-20', DATE '2027-06-07', 0, 3, 5);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Refrigerante',     2,   'L',  'CAIXA', DATE '2026-11-04', DATE '2027-03-19', 0, 3, 7);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Macarrão',          1,   'KG', 'CAIXA', DATE '2026-10-25', DATE '2027-07-27', 0, 3, 5);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Sal',               1,   'KG', 'UN',    DATE '2026-10-10', DATE '2028-04-02', 0, 3, 6);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Azeite de oliva',  500, 'ML', 'UN',    DATE '2026-10-30', DATE '2027-12-24', 0, 3, 6);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Água mineral',     12,  'L',  'CAIXA', DATE '2026-11-14', DATE '2027-05-18', 0, 3, 7);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Farinha de trigo',  2,   'KG', 'UN',    DATE '2026-11-01', DATE '2027-03-19', 0, 3, 5);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Açúcar',           5,   'KG', 'UN',    DATE '2026-10-20', DATE '2027-12-24', 0, 3, 6);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Café em pó',       500, 'G',  'UN',    DATE '2026-11-09', DATE '2027-02-17', 0, 3, 7);

/* geladeira 5*/

INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Leite desnatado', 1,   'L',  'UN',    DATE '2026-11-13', DATE '2026-11-17', 0, 5, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Salsicha',        500, 'G',  'UN',    DATE '2026-11-15', DATE '2026-11-22', 0, 5, 1);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Mamão',           1,   'KG', 'UN',    DATE '2026-11-16', DATE '2026-11-21', 0, 5, 3);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Cerveja',         6,   'L',  'CAIXA', DATE '2026-11-09', DATE '2027-01-18', 0, 5, 7);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Manteiga',        200, 'G',  'UN',    DATE '2026-11-10', DATE '2026-12-09', 0, 5, 2);
INSERT INTO tb_produtos (descricao, quantidade, unidade, tipo_produto, data_compra, validade, congelado, despensa_id, categoria_id) VALUES ('Couve',           300, 'G',  'UN',    DATE '2026-11-17', DATE '2026-11-23', 0, 5, 4);

/* CONVITES */

INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-001', 'PENDENTE',  'carla@email.com',    DATE '2026-11-09', DATE '2026-11-16', 1, 1);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-002', 'ACEITO',    'bruno@email.com',    DATE '2026-10-24', DATE '2026-10-31', 1, 1);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-003', 'PENDENTE',  'davi@email.com',     DATE '2026-11-18', DATE '2026-11-25', 3, 3);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-004', 'RECUSADO',  'elisa@email.com',    DATE '2026-11-04', DATE '2026-11-11', 1, 1);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-005', 'EXPIRADO',  'felipe@email.com',   DATE '2026-10-20', DATE '2026-10-27', 2, 1);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-006', 'CANCELADO', 'gabriela@email.com', DATE '2026-11-07', DATE '2026-11-14', 3, 3);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-007', 'PENDENTE',  'henrique@email.com', DATE '2026-11-11', DATE '2026-11-18', 5, 6);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-008', 'ACEITO',    'isabela@email.com',  DATE '2026-10-25', DATE '2026-11-01', 5, 6);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-009', 'PENDENTE',  'marcos@email.com',   DATE '2026-11-17', DATE '2026-11-24', 6, 10);
INSERT INTO tb_convites (token, status_convite, email_convidado, data_criacao, data_expiracao, despensa_id, usuario_id) VALUES ('tok-010', 'PENDENTE',  'lucas@email.com',    DATE '2026-10-30', DATE '2026-11-09', 5, 6);

COMMIT;

/* UPDATE */
-- Marcar como expirados os convites pendentes que já passaram da data
UPDATE tb_convites
SET status_convite = 'EXPIRADO'
WHERE status_convite = 'PENDENTE'
  AND data_expiracao < TRUNC(SYSDATE);

/* DELETE */
-- Apagar os produtos vencidos
DELETE FROM tb_produtos
WHERE validade < TRUNC(SYSDATE);

-- Esvaziar uma despensa (quando o usuário desfaz uma geladeira)
DELETE FROM tb_produtos
WHERE despensa_id = 4;