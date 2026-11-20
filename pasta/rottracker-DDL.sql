DROP TABLE tb_convites CASCADE CONSTRAINTS;
DROP TABLE tb_produtos CASCADE CONSTRAINTS;
DROP TABLE tb_membros CASCADE CONSTRAINTS;
DROP TABLE tb_categorias CASCADE CONSTRAINTS;
DROP TABLE tb_despensas CASCADE CONSTRAINTS;
DROP TABLE tb_usuarios CASCADE CONSTRAINTS;

CREATE TABLE tb_usuarios (
    usuario_id  INTEGER GENERATED ALWAYS AS IDENTITY,
    nome        VARCHAR2(200) NOT NULL,
    email       VARCHAR2(200) NOT NULL,
    status      VARCHAR2(10)  NOT NULL,
    senha_hash  VARCHAR2(255) NOT NULL,

    CONSTRAINT tb_usuarios_pk PRIMARY KEY (usuario_id),

    CONSTRAINT tb_usuarios_un_email UNIQUE (email),

    CONSTRAINT tb_usuarios_status_ck
    CHECK (status IN ('ATIVO', 'INATIVO', 'DESATIVADO'))
);

CREATE TABLE tb_despensas (
    despensa_id   INTEGER GENERATED ALWAYS AS IDENTITY,
    nome          VARCHAR2(100) NOT NULL,
    tipo          VARCHAR2(10)  NOT NULL,
    data_criacao  DATE          NOT NULL,

    CONSTRAINT tb_despensas_pk PRIMARY KEY (despensa_id),

    CONSTRAINT tb_despensas_tipo_ck
    CHECK (tipo IN ('GELADEIRA', 'CONGELADOR', 'DESPENSA'))
);

CREATE TABLE tb_categorias (
    categoria_id  INTEGER GENERATED ALWAYS AS IDENTITY,
    nome          VARCHAR2(50) NOT NULL,
    perecivel     NUMBER(1)    NOT NULL,

    CONSTRAINT tb_categorias_pk PRIMARY KEY (categoria_id),
    
    CONSTRAINT tb_categorias_un_nome UNIQUE (nome)
);

CREATE TABLE tb_membros (
    membro_id     INTEGER GENERATED ALWAYS AS IDENTITY,
    permissao     VARCHAR2(6) NOT NULL,
    data_entrada  DATE        NOT NULL,
    despensa_id   INTEGER     NOT NULL,
    usuario_id    INTEGER     NOT NULL,

    CONSTRAINT tb_membros_pk PRIMARY KEY (membro_id),

    CONSTRAINT tb_membros_permissao_ck
    CHECK (permissao IN ('ADMIN', 'MEMBRO')),

    CONSTRAINT tb_membros_despensa_usuario_un
    UNIQUE (despensa_id, usuario_id),

    CONSTRAINT tb_membros_despensa_fk
    FOREIGN KEY (despensa_id) 
    REFERENCES tb_despensas (despensa_id),

    CONSTRAINT tb_membros_usuario_fk 
    FOREIGN KEY (usuario_id) 
    REFERENCES tb_usuarios (usuario_id)
);

CREATE TABLE tb_produtos (
    produto_id    INTEGER GENERATED ALWAYS AS IDENTITY,
    descricao     VARCHAR2(100)  NOT NULL,
    quantidade    NUMERIC(10,2)  NOT NULL,
    unidade       VARCHAR2(5)    NULL,
    tipo_produto  VARCHAR(10)    NOT NULL,
    data_compra   DATE           NOT NULL,
    validade      DATE           NOT NULL,
    congelado     NUMBER(1)      NOT NULL,
    despensa_id   INTEGER        NOT NULL,
    categoria_id  INTEGER        NOT NULL,

    CONSTRAINT tb_produtos_pk PRIMARY KEY (produto_id),

    CONSTRAINT tb_produtos_quantidade_ck
    CHECK (quantidade >= 1),

    CONSTRAINT tb_produtos_unidade_ck
    CHECK (unidade IN ('KG', 'G', 'ML', 'L')),

    CONSTRAINT tb_produtos_tipo_ck
    CHECK (tipo_produto IN ('UN', 'CAIXA')),

    CONSTRAINT tb_produtos_validade_ck
    CHECK (validade >= data_compra),

    CONSTRAINT tb_produtos_congelado_ck
    CHECK (congelado IN (0, 1)),

    CONSTRAINT tb_produtos_despensa_fk 
    FOREIGN KEY (despensa_id)
    REFERENCES tb_despensas (despensa_id),

    CONSTRAINT tb_produtos_categoria_fk
    FOREIGN KEY (categoria_id)
    REFERENCES tb_categorias (categoria_id)
);

CREATE TABLE tb_convites (
    convite_id       INTEGER GENERATED ALWAYS AS IDENTITY,
    token            VARCHAR2(100) NOT NULL,
    status_convite   VARCHAR2(10)  NOT NULL,
    email_convidado  VARCHAR2(200) NOT NULL,
    data_criacao     DATE          NOT NULL,
    data_expiracao   DATE          NOT NULL,
    despensa_id      INTEGER       NOT NULL,
    usuario_id       INTEGER       NOT NULL,

    CONSTRAINT tb_convites_pk PRIMARY KEY (convite_id),

    CONSTRAINT tb_convites_token_un UNIQUE (token),

    CONSTRAINT tb_convites_status_ck
    CHECK (status_convite IN ('PENDENTE', 'ACEITO', 'RECUSADO', 'EXPIRADO', 'CANCELADO')),

    CONSTRAINT tb_convites_datas_ck
    CHECK (data_expiracao > data_criacao),

    CONSTRAINT tb_convites_despensa_fk
    FOREIGN KEY (despensa_id)
    REFERENCES tb_despensas (despensa_id),

    CONSTRAINT tb_convites_usuario_fk 
    FOREIGN KEY (usuario_id)
    REFERENCES tb_usuarios (usuario_id)
);

COMMIT;

/*
TRUNCATE TABLE tb_convites;
TRUNCATE TABLE tb_produtos;
TRUNCATE TABLE tb_membros;
*/