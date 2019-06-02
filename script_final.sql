/* script para criacO DAS TABELAS*/
/* logico_versao1: */

CREATE TABLE pessoa (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    sexo varchar(20),
    CPF integer,
    data_nasc date,
    fk_contato_id integer not null,
    fk_endereco_id integer not null
);

CREATE TABLE funcionario (
    id integer not null PRIMARY KEY,
    salario float,
    carga_horario integer,
    fk_pessoa_id integer not null
);

CREATE TABLE tipo_funcionario (
    id integer not null PRIMARY KEY,
    cargo varchar(50)
);

CREATE TABLE contato (
    id integer not null PRIMARY KEY,
    email varchar(100),
    tel_fixo varchar(20),
    celular varchar(15),
    instagram varchar(50),
    facebook varchar(50)
);

CREATE TABLE bairro (
    nome varchar(60),
    fk_cidade_id integer not null,
    id integer not null PRIMARY KEY
);

CREATE TABLE cidade (
    id integer not null PRIMARY KEY,
    nome varchar(45),
    fk_estado_id integer not null
);

CREATE TABLE estado (
    nome varchar(45),
    id integer not null PRIMARY KEY,
    sigla varchar(5),
    fk_pais_id integer not null
);

CREATE TABLE pais (
    nome varchar(50),
    id integer not null PRIMARY KEY
);

CREATE TABLE endereco (
    id integer not null PRIMARY KEY,
    logradouro varchar(60),
    CEP varchar(10),
    numero varchar(10),
    ponto_referencia varchar(200),
    fk_id_bairro integer not null
);

CREATE TABLE fornecedor (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    CNPJ varchar(60),
    fk_endereco_id integer not null,
    fk_contato_id integer not null
);

CREATE TABLE ingrediente (
    preco float,
    peso float,
    nome varchar(60),
    id integer not null PRIMARY KEY,
    fk_unid_medida_id integer not null,
    fk_tipo_ingrediente_id integer not null
);

CREATE TABLE tipo_ingrediente (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    pericividade boolean
);

CREATE TABLE unid_medida (
    id integer not null PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE marca (
    id integer PRIMARY KEY,
    nome varchar(60),
    linha varchar(60)
);

CREATE TABLE receita (
    id integer not null PRIMARY KEY,
    nome varchar(100),
    modo_preparo varchar(5000)
);

CREATE TABLE produto (
    nome varchar(100),
    valor_venda float,
    lucro float,
    custo float,
    validade_dia integer,
    id integer PRIMARY KEY,
    fk_tipo_produto_id integer not null,
    fk_decoracao_id integer not null
);

CREATE TABLE pedido (
    valor float,
    id integer PRIMARY KEY,
    data_pedido date,
    entrada float,
    data_entrega date,
    fk_pessoa_id integer not null,
    fk_status_id integer not null,
    fk_funcionario_id integer not null
);

CREATE TABLE tipo_produto (
    linha varchar(60),
    id integer not null PRIMARY KEY,
    nome varchar(60)
);

CREATE TABLE decoracao (
    id integer not null PRIMARY KEY,
    descricao varchar(800),
    imagem varchar(300)
);

CREATE TABLE cor (
    id integer not null PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE item_pedido_contem (
    id integer not null PRIMARY KEY,
    fk_decoracao_id integer not null,
    fk_status_id integer not null,
    fk_produto_id integer,
    fk_pedido_id integer
);

CREATE TABLE estoque_disponivel_produzido (
    valor float,
    data_validade date not null,
    data_fabricacao date not null,
    quantidade integer not null,
    lote integer,
    id integer not null PRIMARY KEY,
    fk_pedido_id integer,
    fk_produto_id integer
);

CREATE TABLE compra_debita (
    numero_parcela integer not null,
    data_compra date,
    valor_total float,
    valor_pago float,
    id integer not null PRIMARY KEY,
    quantidade integer not null,
    fk_pessoa_id integer not null,
    fk_estoque_disponivel_produzido_id integer not null
);

CREATE TABLE forma_pagamento (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    taxa_juros float
);

CREATE TABLE status (
    nome varchar(50),
    id integer not null PRIMARY KEY
);

CREATE TABLE ramo_atividade (
    id integer not null PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE funcionario_tipo_funcionario (
    fk_tipo_funcionario_id integer not null,
    fk_funcionario_id integer not null,
    id integer not null PRIMARY KEY
);

CREATE TABLE fornecedor_tem_ingrediente (
    fk_ingrediente_id integer not null,
    fk_fornecedor_id integer not null,
    id integer not null PRIMARY KEY
);

CREATE TABLE ingrediente_tem_marca (
    fk_marca_id integer,
    fk_ingrediente_id integer not null
);

CREATE TABLE receita_produto (
    fk_receita_id integer not null,
    fk_produto_id integer,
    id integer not null PRIMARY KEY
);

CREATE TABLE ingrediente_receita (
    fk_ingrediente_id integer not null,
    fk_receita_id integer not null,
    quantidade integer,
    preco_quant_usada float,
    id integer not null PRIMARY KEY
);

CREATE TABLE decoracao_cor (
    fk_cor_id integer not null,
    fk_decoracao_id integer not null
);

CREATE TABLE compra_forma_pag (
    fk_forma_pagamento_id integer not null,
    fk_compra_debita_id integer not null,
    id integer not null PRIMARY KEY
);

CREATE TABLE atividade_fornecedor (
    fk_ramo_atividade_id integer not null,
    fk_fornecedor_id integer not null
);
 
ALTER TABLE pessoa ADD CONSTRAINT FK_pessoa_2
    FOREIGN KEY (fk_contato_id)
    REFERENCES contato (id)
    ON DELETE CASCADE;
 
ALTER TABLE pessoa ADD CONSTRAINT FK_pessoa_3
    FOREIGN KEY (fk_endereco_id)
    REFERENCES endereco (id)
    ON DELETE CASCADE;
 
ALTER TABLE funcionario ADD CONSTRAINT FK_funcionario_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE bairro ADD CONSTRAINT FK_bairro_1
    FOREIGN KEY (fk_cidade_id)
    REFERENCES cidade (id)
    ON DELETE RESTRICT;
 
ALTER TABLE cidade ADD CONSTRAINT FK_cidade_2
    FOREIGN KEY (fk_estado_id)
    REFERENCES estado (id)
    ON DELETE RESTRICT;
 
ALTER TABLE estado ADD CONSTRAINT FK_estado_2
    FOREIGN KEY (fk_pais_id)
    REFERENCES pais (id)
    ON DELETE RESTRICT;
 
ALTER TABLE endereco ADD CONSTRAINT FK_endereco_2
    FOREIGN KEY (fk_id_bairro)
    REFERENCES bairro (id);
 
ALTER TABLE fornecedor ADD CONSTRAINT FK_fornecedor_2
    FOREIGN KEY (fk_endereco_id)
    REFERENCES endereco (id)
    ON DELETE CASCADE;
 
ALTER TABLE fornecedor ADD CONSTRAINT FK_fornecedor_3
    FOREIGN KEY (fk_contato_id)
    REFERENCES contato (id)
    ON DELETE CASCADE;
 
ALTER TABLE ingrediente ADD CONSTRAINT FK_ingrediente_2
    FOREIGN KEY (fk_unid_medida_id)
    REFERENCES unid_medida (id)
    ON DELETE CASCADE;
 
ALTER TABLE ingrediente ADD CONSTRAINT FK_ingrediente_3
    FOREIGN KEY (fk_tipo_ingrediente_id)
    REFERENCES tipo_ingrediente (id)
    ON DELETE RESTRICT;
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_tipo_produto_id)
    REFERENCES tipo_produto (id)
    ON DELETE RESTRICT;
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_3
    FOREIGN KEY (fk_decoracao_id)
    REFERENCES decoracao (id)
    ON DELETE CASCADE;
 
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE CASCADE;
 
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_3
    FOREIGN KEY (fk_status_id)
    REFERENCES status (id)
    ON DELETE CASCADE;
 
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_4
    FOREIGN KEY (fk_funcionario_id)
    REFERENCES funcionario (id)
    ON DELETE CASCADE;
 
ALTER TABLE item_pedido_contem ADD CONSTRAINT FK_item_pedido_contem_2
    FOREIGN KEY (fk_decoracao_id)
    REFERENCES decoracao (id)
    ON DELETE CASCADE;
 
ALTER TABLE item_pedido_contem ADD CONSTRAINT FK_item_pedido_contem_3
    FOREIGN KEY (fk_status_id)
    REFERENCES status (id)
    ON DELETE CASCADE;
 
ALTER TABLE item_pedido_contem ADD CONSTRAINT FK_item_pedido_contem_4
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id);
 
ALTER TABLE item_pedido_contem ADD CONSTRAINT FK_item_pedido_contem_5
    FOREIGN KEY (fk_pedido_id)
    REFERENCES pedido (id);
 
ALTER TABLE estoque_disponivel_produzido ADD CONSTRAINT FK_estoque_disponivel_produzido_2
    FOREIGN KEY (fk_pedido_id)
    REFERENCES pedido (id)
    ON DELETE SET NULL;
 
ALTER TABLE estoque_disponivel_produzido ADD CONSTRAINT FK_estoque_disponivel_produzido_3
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE SET NULL;
 
ALTER TABLE compra_debita ADD CONSTRAINT FK_compra_debita_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id);
 
ALTER TABLE compra_debita ADD CONSTRAINT FK_compra_debita_3
    FOREIGN KEY (fk_estoque_disponivel_produzido_id)
    REFERENCES estoque_disponivel_produzido (id);
 
ALTER TABLE funcionario_tipo_funcionario ADD CONSTRAINT FK_funcionario_tipo_funcionario_2
    FOREIGN KEY (fk_tipo_funcionario_id)
    REFERENCES tipo_funcionario (id)
    ON DELETE RESTRICT;
 
ALTER TABLE funcionario_tipo_funcionario ADD CONSTRAINT FK_funcionario_tipo_funcionario_3
    FOREIGN KEY (fk_funcionario_id)
    REFERENCES funcionario (id)
    ON DELETE RESTRICT;
 
ALTER TABLE fornecedor_tem_ingrediente ADD CONSTRAINT FK_fornecedor_tem_ingrediente_2
    FOREIGN KEY (fk_ingrediente_id)
    REFERENCES ingrediente (id)
    ON DELETE RESTRICT;
 
ALTER TABLE fornecedor_tem_ingrediente ADD CONSTRAINT FK_fornecedor_tem_ingrediente_3
    FOREIGN KEY (fk_fornecedor_id)
    REFERENCES fornecedor (id)
    ON DELETE SET NULL;
 
ALTER TABLE ingrediente_tem_marca ADD CONSTRAINT FK_ingrediente_tem_marca_1
    FOREIGN KEY (fk_marca_id)
    REFERENCES marca (id)
    ON DELETE RESTRICT;
 
ALTER TABLE ingrediente_tem_marca ADD CONSTRAINT FK_ingrediente_tem_marca_2
    FOREIGN KEY (fk_ingrediente_id)
    REFERENCES ingrediente (id)
    ON DELETE RESTRICT;
 
ALTER TABLE receita_produto ADD CONSTRAINT FK_receita_produto_2
    FOREIGN KEY (fk_receita_id)
    REFERENCES receita (id)
    ON DELETE RESTRICT;
 
ALTER TABLE receita_produto ADD CONSTRAINT FK_receita_produto_3
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE SET NULL;
 
ALTER TABLE ingrediente_receita ADD CONSTRAINT FK_ingrediente_receita_2
    FOREIGN KEY (fk_ingrediente_id)
    REFERENCES ingrediente (id)
    ON DELETE RESTRICT;
 
ALTER TABLE ingrediente_receita ADD CONSTRAINT FK_ingrediente_receita_3
    FOREIGN KEY (fk_receita_id)
    REFERENCES receita (id)
    ON DELETE SET NULL;
 
ALTER TABLE decoracao_cor ADD CONSTRAINT FK_decoracao_cor_1
    FOREIGN KEY (fk_cor_id)
    REFERENCES cor (id)
    ON DELETE RESTRICT;
 
ALTER TABLE decoracao_cor ADD CONSTRAINT FK_decoracao_cor_2
    FOREIGN KEY (fk_decoracao_id)
    REFERENCES decoracao (id)
    ON DELETE SET NULL;
 
ALTER TABLE compra_forma_pag ADD CONSTRAINT FK_compra_forma_pag_2
    FOREIGN KEY (fk_forma_pagamento_id)
    REFERENCES forma_pagamento (id)
    ON DELETE RESTRICT;
 
ALTER TABLE compra_forma_pag ADD CONSTRAINT FK_compra_forma_pag_3
    FOREIGN KEY (fk_compra_debita_id)
    REFERENCES compra_debita (id)
    ON DELETE SET NULL;
 
ALTER TABLE atividade_fornecedor ADD CONSTRAINT FK_atividade_fornecedor_1
    FOREIGN KEY (fk_ramo_atividade_id)
    REFERENCES ramo_atividade (id)
    ON DELETE RESTRICT;
 
ALTER TABLE atividade_fornecedor ADD CONSTRAINT FK_atividade_fornecedor_2
    FOREIGN KEY (fk_fornecedor_id)
    REFERENCES fornecedor (id)
    ON DELETE SET NULL;
