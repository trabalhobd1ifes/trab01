/* Logico_endgame: */

CREATE TABLE pessoa (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    sexo varchar(20),
    CPF integer,
    data_nasc date,
    fk_contato_id integer not null,
    fk_endereco_id int
);

CREATE TABLE funcionario (
    id integer not null PRIMARY KEY,
    salario float,
    carga_horario int,
    usuario varchar(60) not null,
    senha varchar(60),
    fk_pessoa_id integer not null
);

CREATE TABLE tipo_funcionario (
    id int PRIMARY KEY,
    cargo varchar(50)
);

CREATE TABLE contato (
    id integer not null PRIMARY KEY,
    email varchar(100),
    tel_fixo varchar(20),
    celular varchar(15),
    instagram varchar(60),
    facebook varchar(60)
);

CREATE TABLE bairro (
    nome varchar(60),
    id integer not null PRIMARY KEY,
    fk_cidade_id integer not null
);

CREATE TABLE cidade (
    id integer not null PRIMARY KEY,
    nome varchar(45),
    fk_estado_id int
);

CREATE TABLE estado (
    nome varchar(45),
    id int PRIMARY KEY,
    sigla varchar(5),
    fk_pais_id int
);

CREATE TABLE pais (
    nome varchar(50),
    id int PRIMARY KEY
);

CREATE TABLE endereco (
    id int PRIMARY KEY,
    logradouro varchar(60),
    CEP varchar(10),
    numero varchar(10),
    ponto_referencia varchar(200),
    fk_bairro_id integer not null
);

CREATE TABLE fornecedor (
    id int PRIMARY KEY,
    nome varchar(60),
    CNPJ varchar(60),
    fk_endereco_id int,
    fk_contato_id integer not null
);

CREATE TABLE ingrediente (
    preco float,
    nome varchar(60),
    peso float,
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
    id integer not null PRIMARY KEY,
    nome varchar(60),
    linha varchar(60)
);

CREATE TABLE receita (
    id integer not null PRIMARY KEY,
    nome varchar(60),
    modo_preparo varchar(50000)
);

CREATE TABLE produto (
    nome varchar(100),
    valor_venda float,
    lucro float,
    custo float,
    validade_dia int,
    peso float,
    id integer not null PRIMARY KEY,
    fk_tipo_produto_id integer   not null,
    fk_decoracao_id integer not null,
    fk_unid_medida_id integer not null
);

CREATE TABLE pedido (
    valor float,
    id integer not null PRIMARY KEY,
    data_pedido date,
    entrada float,
    data_entrega date,
    qtd integer not null,
    fk_pessoa_id integer not null,
    fk_status_id integer not null,
    fk_funcionario_id integer not null
);

CREATE TABLE tipo_produto (
    linha varchar(60),
    id integer   not null PRIMARY KEY,
    nome varchar(50000)
);

CREATE TABLE decoracao (
    id integer not null PRIMARY KEY,
    descricao varchar(800),
    imagem varchar(300)
);

CREATE TABLE cor (
    id int PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE item_pedido_contem (
    id int PRIMARY KEY,
    fk_decoracao_id integer not null,
    fk_status_id integer not null,
    fk_produto_id integer not null,
    fk_pedido_id integer not null
);

CREATE TABLE estoque_disponivel_produzido (
    valor float,
    data_validade date,
    data_fabricacao date,
    quantidade int,
    lote int,
    id int PRIMARY KEY,
    fk_pedido_id integer,
    fk_produto_id integer
);

CREATE TABLE compra_debita (
    numero_parcela int,
    data_compra date,
    valor_total float,
    valor_pago float,
    id int PRIMARY KEY,
    quantidade int,
    fk_pessoa_id integer not null,
    fk_estoque_disponivel_produzido_id int
);

CREATE TABLE forma_pagamento (
    id int PRIMARY KEY,
    nome varchar(60),
    taxa_juros float
);

CREATE TABLE status (
    nome varchar(50),
    id integer not null PRIMARY KEY
);

CREATE TABLE ramo_atividade (
    id int PRIMARY KEY,
    nome varchar(100)
); 

CREATE TABLE estoque_ingre (
    id integer not null PRIMARY KEY,
    qtd_unid_med float,
    fk_ingrediente_fornecimento_id int,
    fk_ingrediente_marca_tem_id integer not null
);

CREATE TABLE ingrediente_fornecimento (
    id int PRIMARY KEY,
    fk_ingrediente_id integer not null,
    fk_fornecedor_id int
);

CREATE TABLE ingrediente_marca_tem (
    id integer not null PRIMARY KEY,
    fk_marca_id integer not null,
    fk_ingrediente_id integer not null
);

CREATE TABLE funcionario_tipo_funcionario (
    fk_tipo_funcionario_id int,
    fk_funcionario_id integer not null,
    id int PRIMARY KEY
);

CREATE TABLE receita_produto (
    fk_receita_id integer not null,
    fk_produto_id integer not null,
    id int PRIMARY KEY
);

CREATE TABLE ingrediente_receita (
    fk_ingrediente_id integer not null,
    fk_receita_id integer not null,
    quantidade float,
    preco_quant_usada float,
    id integer not null PRIMARY KEY
);

CREATE TABLE decoracao_cor (
    fk_cor_id int,
    fk_decoracao_id integer not null,
    id integer not null PRIMARY KEY
);

CREATE TABLE compra_forma_pag (
    fk_forma_pagamento_id int,
    fk_compra_debita_id int,
    id int PRIMARY KEY
);

CREATE TABLE atividade_fornecedor (
    fk_ramo_atividade_id int,
    fk_fornecedor_id int,
    id integer   not null PRIMARY KEY
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
 
ALTER TABLE bairro ADD CONSTRAINT FK_bairro_2
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
    FOREIGN KEY (fk_bairro_id)
    REFERENCES bairro (id)
    ON DELETE RESTRICT;
 
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
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_4
    FOREIGN KEY (fk_unid_medida_id)
    REFERENCES unid_medida (id)
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
    ON DELETE CASCADE;
 
ALTER TABLE estoque_disponivel_produzido ADD CONSTRAINT FK_estoque_disponivel_produzido_3
    FOREIGN KEY (fk_produto_id)
    REFERENCES produto (id)
    ON DELETE RESTRICT;
 
ALTER TABLE compra_debita ADD CONSTRAINT FK_compra_debita_2
    FOREIGN KEY (fk_pessoa_id)
    REFERENCES pessoa (id);
 
ALTER TABLE compra_debita ADD CONSTRAINT FK_compra_debita_3
    FOREIGN KEY (fk_estoque_disponivel_produzido_id)
    REFERENCES estoque_disponivel_produzido (id);
 
ALTER TABLE estoque_ingre ADD CONSTRAINT FK_estoque_ingre_2
    FOREIGN KEY (fk_ingrediente_fornecimento_id)
    REFERENCES ingrediente_fornecimento (id)
    ON DELETE CASCADE;
 
ALTER TABLE estoque_ingre ADD CONSTRAINT FK_estoque_ingre_3
    FOREIGN KEY (fk_ingrediente_marca_tem_id)
    REFERENCES ingrediente_marca_tem (id)
    ON DELETE CASCADE;
 
ALTER TABLE ingrediente_fornecimento ADD CONSTRAINT FK_ingrediente_fornecimento_2
    FOREIGN KEY (fk_ingrediente_id)
    REFERENCES ingrediente (id);
 
ALTER TABLE ingrediente_fornecimento ADD CONSTRAINT FK_ingrediente_fornecimento_3
    FOREIGN KEY (fk_fornecedor_id)
    REFERENCES fornecedor (id);
 
ALTER TABLE ingrediente_marca_tem ADD CONSTRAINT FK_ingrediente_marca_tem_2
    FOREIGN KEY (fk_marca_id)
    REFERENCES marca (id);
 
ALTER TABLE ingrediente_marca_tem ADD CONSTRAINT FK_ingrediente_marca_tem_3
    FOREIGN KEY (fk_ingrediente_id)
    REFERENCES ingrediente (id);
 
ALTER TABLE funcionario_tipo_funcionario ADD CONSTRAINT FK_funcionario_tipo_funcionario_2
    FOREIGN KEY (fk_tipo_funcionario_id)
    REFERENCES tipo_funcionario (id)
    ON DELETE RESTRICT;
 
ALTER TABLE funcionario_tipo_funcionario ADD CONSTRAINT FK_funcionario_tipo_funcionario_3
    FOREIGN KEY (fk_funcionario_id)
    REFERENCES funcionario (id)
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
 
ALTER TABLE decoracao_cor ADD CONSTRAINT FK_decoracao_cor_2
    FOREIGN KEY (fk_cor_id)
    REFERENCES cor (id)
    ON DELETE RESTRICT;
 
ALTER TABLE decoracao_cor ADD CONSTRAINT FK_decoracao_cor_3
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
 
ALTER TABLE atividade_fornecedor ADD CONSTRAINT FK_atividade_fornecedor_2
    FOREIGN KEY (fk_ramo_atividade_id)
    REFERENCES ramo_atividade (id)
    ON DELETE RESTRICT;
 
ALTER TABLE atividade_fornecedor ADD CONSTRAINT FK_atividade_fornecedor_3
    FOREIGN KEY (fk_fornecedor_id)
    REFERENCES fornecedor (id)
    ON DELETE SET NULL;

INSERT INTO   pais   (  nome  ,   id  ) VALUES ('Brasil', '1'), ('Argentina', '2'), ('Peru', '3'), ('Franca', '4'), ('Bolivia', '5');
INSERT INTO   estado   (  nome  ,   id  ,   sigla  ,   fk_pais_id  ) VALUES ('Espirito Santo', '1', 'ES', '1'), ('Minas Gerais', '2', 'MG', '1'), ('São Paulo', '3', 'SP', '1'), ('Rio de Janeiro', '4', 'RJ', '1'), ('Bahia', '5', 'BH', '1');
INSERT INTO   cidade   (  id  ,   nome  ,   fk_estado_id  ) VALUES ('1', 'Vitoria', '1'), ('2', 'serra', '1'), ('3', 'Cariacica', '1'), ('4', 'Vila Velha', '1'), ('5', 'Fundao', '1');
INSERT INTO   bairro   (  nome  ,   fk_cidade_id  ,  id  ) VALUES ('Maruipe', '1','1'), ('Goiabeiras', '1','2');
INSERT INTO   tipo_produto   (  linha  ,   id  ,   nome  ) VALUES ('Premium', '1', 'Bolo de pote'), ('Gourmet', '2', 'Palha Italiana'), ('Tradicional', '3', 'Bolo Acetado'), ('Tradicional', '4', 'Bolo de pote festa'), ('Tradicional', '5', 'Docinho');
INSERT INTO   cor   (  id  ,   nome  ) VALUES ('1', 'Azul'), ('2', 'Verde'), ('3', 'Rosa'), ('4', 'Laranja'), ('5', 'Branco');
INSERT INTO   forma_pagamento   (  id  ,   nome  ,   taxa_juros  ) VALUES ('1', 'Dinheiro', '0'), ('2', 'cartao de debito', '2'), ('3', 'cartao de credito', '4'), ('4', 'ticket', '5'), ('5', 'cheque', '6');
INSERT INTO   unid_medida   (  id  ,   nome  ) VALUES ('1', 'gramas'), ('2', 'mililitro');
INSERT INTO   contato   (  id  ,   email  ,   tel_fixo  ,   celular  ,   instagram  ,   facebook  ) VALUES ('1', 'reidasfesta@loja.com', '333733389', '2798765432', '@reidasfestas', 'rei das festas'), ('2', 'joao@gmail.com', '33322210', '27998765463', '@joaozinho', 'joao da costa');
INSERT INTO    ramo_atividade   ( id   ,  nome  )VALUES ('1',  'Alimentos e Bebidas'), ('2',  'Outros ServiÃ§os'), ('3',  'Moda e AcessÃ³rios'), ('4',  'PÃ¡scoa'), ('5',  'ServiÃ§os de ConfecÃ§Ãµes');
INSERT INTO   tipo_ingrediente   (  id  ,   nome  ,   pericividade  ) VALUES ('1', 'Verduras e Legumes', '1'), ('2', 'Frutas', '1'), ('3', 'Leite e derivados', '1'), ('4', 'AÃ§Ãºcares e Doces', '1'), ('5', 'Ã“leos e Gorduras', '0');
INSERT INTO  status  ( nome ,  id ) VALUES ('pronto', '1'), ('em produÃ§Ã£o', '2'), ('orÃ§amento', '3'), ('atrasado', '4'), ('encomenda', '5');
INSERT INTO  marca  ( id ,  nome ,  linha ) VALUES ('1', 'MavalÃ©rio', NULL), ('2', 'melken', NULL), ('3', 'bom sucesso', NULL), ('4', 'Nestle', NULL), ('5', 'Italac', NULL);
INSERT INTO  tipo_funcionario  ( id ,  cargo ) VALUES ('1', 'confeiteiro'), ('2', 'auxiliar de servicos gerais'),('3','operadr de caixa');
INSERT INTO  endereco  ( id ,  logradouro ,  CEP ,  numero ,  ponto_referencia ,fk_bairro_id ) VALUES ('1', 'rua dos anjos', '29160788', '10', 'rua do bar do seu ze', '1'), ('2', 'rua das marias', '2698944', '1', NULL, '2'), ('3', 'avenida do pedrinho', '29160475', '889-b', NULL, '1'), ('4', 'rua do amor', '29164854', '100', 'atras do coleigio zezinho', '2'), ('5', 'avenida mario batalha', '29160781', '500', NULL, '1');
INSERT INTO  contato  ( id ,  email ,  tel_fixo ,  celular ,  instagram ,  facebook ) VALUES ('3', 'pedrogmail.com', '33389564', '998872477', NULL, NULL), ('4', 'festanobosque@gmail.com', '33368544', '998952621', '@cleuvi.rd', NULL);
INSERT INTO  pessoa  ( id ,  nome ,  sexo ,  CPF ,  data_nasc ,  fk_contato_id ,  fk_endereco_id ) VALUES ('1', 'pedro da silva', 'M', '00094654684', '1998-06-11', '3', '4'), ('2', 'joao da silva', 'M', NULL, '1989-06-03', '2', '3'), ('3', 'cleiton cruz da silva', 'M', '0540054800', '1980-06-02', '4', '2'), ('4', 'mariana da costa', 'F', '00545751168', '1978-06-09', '4', '1'), ('5', 'julia de oliveira', 'F', '445102300', '1990-06-04', '1', '1');
INSERT INTO  fornecedor  ( id ,  nome ,  CNPJ ,  fk_endereco_id ,  fk_contato_id ) VALUES ('1', 'flores du juju', '534688464', '5', '4'), ('2', 'rei das festas', '468453453', '5', '1');
INSERT INTO  atividade_fornecedor  ( fk_ramo_atividade_id ,  fk_fornecedor_id,id ) VALUES ('1', '1','1'), ('2', '2','2');
INSERT INTO  ingrediente  ( preco ,  peso ,  nome ,  id ,  fk_unid_medida_id ,  fk_tipo_ingrediente_id ) VALUES ('10', '1000', 'cacau em po 50%', '1', '1', '4'), ('5', '1000', 'leite', '2', '2', '3'), ('17', '1000', 'barra de chocolate', '3', '1', '4'), ('50', '5000', 'queijo ', '4', '1', '3'), ('30', '200', 'glucose', '5', '1', '5');
INSERT INTO   ingrediente_marca_tem  ( id, fk_marca_id  , fk_ingrediente_id) VALUES ('1','3', '4'), ('2','2', '3'), ('3','3', '1'), ('4','4', '5'), ('5','2', '2');
INSERT INTO   receita   (  id  ,   nome  ,   modo_preparo  ) VALUES ('1', 'creme de queijo', 'Aqueça o leite com o salsão e o alho-poró em uma panela pequena. Quando começar a ferver desligue, coe e reserve.\r\nEm uma panela média, em fogo baixo, derreta a manteiga e adicione a farinha de trigo. Misture bem com uma colher de pau ou fouet.\r\nQuando começar a borbulhar, retire a panela do fogo e vá adicionando o leite aos poucos e mexendo sempre para não empelotar. Volte a panela para o fogo e mexa até engrossar. Tempere com sal, pimenta e noz moscada.'), ('2', 'ganhche de chocolate', 'Acrescente ao bèchamel já pronto, o creme de leite fresco (ou requeijão) e os queijos, menos a muçarela. Misture bem até derreter o queijo.\r\nAjuste o sal. Leve ao fogo baixo até que engrosse. Coloque metade da muçarela e misture.'), ('3', 'leite cremoso', 'Em uma tigela grande, misture o arroz e o bacalhau.\r\nJunte a cebola, a salsinha, a pimenta e o pimentão. Misture bem.\r\nTempere com sal, pimenta o reino e orégano a gosto.\r\nAdicione o ovo, misture e junte a farinha de trigo. Misture muito bem.\r\nFaça bolinhas com a massa, se achar necessário, pode colocar mais um pouco de farinha.\r\nEm um prato, coloque a farinha de trigo, tempere com um pouco de sal. Em outro prato, coloque a farinha panko. E numa tigela coloque o ovo batido e tempere com sal e pimenta.\r\nEmpane os bolinhos de arroz com bacalhau, primeiro na farinha de trigo, depois no ovo e por ultimo na panko.\r\nFrite em óleo em temperatura média, sirva com um molho de sua preferência.');
INSERT INTO  ingrediente_receita  ( fk_ingrediente_id ,  fk_receita_id ,  quantidade ,  preco_quant_usada ,  id ) VALUES ('1', '1', '100', '6.54', '1'), ('2', '2', '20000', '66.9', '2'), ('1', '3', '600', '1.98', '3'), ('2', '2', '800', '6.98', '4'), ('2', '3', '8000', '65.85', '5');
INSERT INTO  decoracao  ( id ,  descricao ,  imagem ) VALUES ('1', 'ganache em cima branca descendo com chantily', 'https://www.marolacomcarambola.com.br/wp-content/uploads/2019/04/receita-de-bolinho-de-arroz-crocante-com-bacalhau.jpg'), ('2', 'bolos raspado com chantily azul e flores por cima', 'https://www.marolacomcarambola.com.br/wp-content/uploads/2019/04/receita-de-bolinho-de-arroz-com-bacalhau-crocante-1.jpg');
INSERT INTO  produto  ( nome ,  valor_venda ,  lucro ,  custo ,  validade_dia ,peso,  id ,  fk_tipo_produto_id ,  fk_decoracao_id,fk_unid_medida_id ) VALUES ('bolo redendo 18 cm baunilha e limao', '100', '40', '60', '7','2.500', '2', '1', '2','1'), ('bolo quadrado 25x35 cm chocolate', '20', '10', '10', '5','6.500','6', '1', '2','1'), ('bolo prestigio 16 m', '50', '10', '40', '7','4000', '3', '1', '1','2'), ('palha italiana', '2.50', '1', '1.50', '8','200', '4', '1', '2','1'), ('bolo 15 cm sensação', '110', '60', '50', '6','5000', '1', '1', '2','1');
INSERT INTO  receita_produto  ( fk_receita_id ,  fk_produto_id ,  id ) VALUES ('1', '2', '1'), ('2', '2', '2'), ('2', '3', '3'), ('2', '4', '4'), ('1', '6', '5');
INSERT INTO  decoracao_cor  ( fk_cor_id ,  fk_decoracao_id ,id) VALUES ('2', '1','1'), ('3', '2','2'), ('1', '2','3');
INSERT INTO  funcionario  ( id ,  salario ,  carga_horario , usuario,senha, fk_pessoa_id ) VALUES ('1', '1000', '40','jondo55','chita14541','2'), ('2', '2000', '30','cebolinha','triniti5378','1');
INSERT INTO  funcionario_tipo_funcionario  ( fk_tipo_funcionario_id ,  fk_funcionario_id ,  id ) VALUES ('2', '1', '1'), ('1', '2', '2');
INSERT INTO  ingrediente_fornecimento  ( fk_ingrediente_id ,  fk_fornecedor_id ,  id ) VALUES ('1', '1', '1'), ('5', '2', '2'), ('3', '1', '3'), ('2', '2', '4'), ('4', '1', '5');
INSERT INTO  pedido  ( valor ,  id ,  data_pedido ,  entrada ,  data_entrega ,qtd, fk_pessoa_id ,  fk_status_id ,  fk_funcionario_id ) VALUES ('100', '1', '2019-05-15', NULL, '2019-06-05','2', '5', '5', '1'), ('200', '2', '2019-06-01', NULL, '2019-06-04','3' ,'4', '2', '1'), ('150', '3', '2019-06-03', NULL, '2019-06-10','6', '3', '3', '1');
INSERT INTO  estoque_disponivel_produzido  ( valor ,  data_validade ,  data_fabricacao ,  quantidade ,  lote ,  id ,  fk_pedido_id ,  fk_produto_id ) VALUES ('100', '2019-06-20', '2019-06-02', '1', NULL, '1', '1', '1'), ('2.50', '2019-06-18', '2019-06-12', '10', '255', '2', '1', '4'), ('50', '2019-06-02', '2019-06-10', '10', '100', '3', '1', '3');
INSERT INTO  item_pedido_contem  ( id ,  fk_decoracao_id ,  fk_status_id ,  fk_produto_id ,  fk_pedido_id ) VALUES ('1', '2', '1', '3', '1'), ('2', '2', '1', '4', '1');
INSERT INTO  compra_debita  ( numero_parcela ,  data_compra ,  valor_total ,  valor_pago ,  id ,  quantidade ,  fk_pessoa_id ,  fk_estoque_disponivel_produzido_id ) VALUES ('1', '2019-06-03', '100', '100', '1', '1', '5', '1');
INSERT INTO  compra_forma_pag  ( fk_forma_pagamento_id ,  fk_compra_debita_id ,  id ) VALUES ('1', '1', '1');
INSERT INTO estoque_ingre (id,qtd_unid_med,fk_ingrediente_fornecimento_id,fk_ingrediente_marca_tem_id) values ('1','1000','4','3');
