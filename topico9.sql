/*mais inserções de dados para termos mais registros nas consultas abaixo; */
INSERT INTO  contato  ( id ,  email ,  tel_fixo ,  celular ,  instagram ,  facebook ) 
VALUES ('5', 'francisco@contato.com', '55555555', '998872477', NULL, NULL), 
('6', 'greenwald@theintercept.com', '66666666', '998953421', '@vazaJato', NULL),
('7', 'blackpanther@wakanda.com', '77777777', '998872657', NULL, NULL), 
('8', 'Marielle@vive.com', '88888888', '998952141', '@mariellevive', NULL),
('9', 'kimgordon@sonicyouth.com', '99999999', '995052621', '@kimyouth', NULL);

INSERT INTO   bairro   (  nome  ,   fk_cidade_id  ,  id  ) 
VALUES ('Cariacica sede', '3','3'), 
('Tabajara', '3','4'),
('Itaciba', '3','5'),
('campo grande', '3','6'),
('cobilândia', '4','7'),
('Praia da Costa', '4','8');

INSERT INTO  endereco  ( id ,  logradouro ,  CEP ,  numero ,  ponto_referencia ,fk_bairro_id ) 
VALUES ('6', 'rua dos anjos', '29160788', '130', 'rua do bar do seu ze', '1'), 
('7', 'avenida principal', '000987564', '1-f', 'ao lado dos correios', '2'), 
('8', 'avenida do pedrinho', '184390267', '9-b', 'em frente a padaria da lola', '3'), 
('9', 'rua do amor', '18903348', '120', 'atras do coleigio zezinho', '4'), 
('10', 'avenida avenidona', '28109258', '50-c', 'em frente ao buteco copo sujo', '5'),
('11', 'rua do leite', '189036728', '150', 'nem o uber aguenta és', '6'), 
('12', 'rua do trigo', '189098728', '140', 'entre a rua 1 e a 3 mas não é a 2', '7'), 
('13', 'rua do doce', '189036446', '10', 'atras da rua da frente', '8');

INSERT INTO  pessoa  ( id ,  nome ,  sexo ,  CPF ,  data_nasc ,  fk_contato_id ,  fk_endereco_id )
VALUES ('6', 'Francisco', 'M', '192829394', '1991-05-31', '5', '10'), 
('7', 'greenwald', 'M', NULL, '1989-06-03', '6', '9'), 
('8', 'pantera negra', 'M', '0540054800', '1980-06-02', '7', '8'), 
('9', 'Marielle', 'F', NULL, '1978-06-09', '8', '7'), 
('10', 'kim gordon', 'F', NULL, '1990-06-04', '9', '6');

INSERT INTO  pedido  ( valor ,  id ,  data_pedido ,  entrada ,  data_entrega ,qtd, fk_pessoa_id ,  fk_status_id ,  fk_funcionario_id ) 
VALUES ('100', '4', '2019-05-15', NULL, '2019-06-05','2', '5', '5', '1'), 
('200', '5', '2019-04-13', NULL, NULL,'3' ,'4', '4', '1'), 
('150', '6', '2017-06-01', NULL, NULL,'6', '3', '2', '1'),
('400', '7', '2019-04-13', NULL, NULL,'3' ,'6', '2', '1'), 
('110', '8', '2017-06-01', NULL, NULL,'6', '7', '2', '1'),
('160', '9', '2017-06-01', NULL, NULL,'6', '9', '2', '1'),
('150', '10', '2017-06-01', NULL, NULL,'6', '8', '2', '1'),
('150', '11', '2017-06-01', NULL, NULL,'6', '10', '2', '1');

INSERT INTO  item_pedido_contem  ( id ,  fk_decoracao_id ,  fk_status_id ,  fk_produto_id ,  fk_pedido_id ) 
VALUES ('3', '1', '3', '3', '5'), 
('4', '2', '4', '2', '2'), 
('5', '1', '2', '3', '3'), 
('6', '2', '5', '2', '5');

INSERT INTO  fornecedor  ( id ,  nome ,  CNPJ ,  fk_endereco_id ,  fk_contato_id ) 
VALUES ('11', 'tião leiteiro', '534688464', '1', '4'),
('12', 'atacadão da ana', '534688464', '3', '4'),  
('13', 'casa dos doces', '468453453', '5', '1');

INSERT INTO   ingrediente_marca_tem  ( id, fk_marca_id  , fk_ingrediente_id) 
VALUES ('10','3', '4'), 
('6','2', '3'), 
('7','3', '1'), 
('8','4', '5'), 
('9','2', '2');

INSERT INTO  ingrediente_fornecimento  ( fk_ingrediente_id ,  fk_fornecedor_id ,  id ) 
VALUES ('3', '11', '6'), 
('2', '12', '7'), 
('4', '13', '8');


/*9.1 CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)*/ 
select * from pessoa;
select * from funcionario;
select * from tipo_funcionario;
select * from contato;
select * from bairro;
select * from cidade;
select * from estado;
select * from pais;
select * from endereco;
select * from fornecedor;
select * from ingrediente;
select * from tipo_ingrediente;
select * from unid_medida;
select * from marca;
select * from receita;
select * from produto;
select * from pedido;
select * from tipo_produto;
select * from decoracao;
select * from cor;
select * from item_pedido_contem;
select * from estoque_disponivel_produzido;
select * from compra_debita;
select * from forma_pagamento;
select * from status;
select * from ramo_atividade;
select * from estoque_ingre;
select * from ingrediente_fornecimento;
select * from ingrediente_marca_tem;
select * from funcionario_tipo_funcionario;
select * from receita_produto;
select * from ingrediente_receita;
select * from decoracao_cor;
select * from compra_forma_pag;
select * from atividade_fornecedor;



/*9.2 CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)*/
/*Seleciona pessoas com o campo cpf vazio*/
select nome from pessoa where CPF is NULL;
/*Seleciona pessoas com o campo cpf vaziprodutos da linha tracicional*/
select nome from tipo_produto where linha ='tradicional';
/*Seleciona pessoas com o campo cpf vazioseleciona produtos medidos em gramas*/
select nome from ingrediente where fk_unid_medida_id = 1;
/*Seleseleciona fornecedor do endereço 'avenida mauro batalha'*/
select nome from fornecedor where fk_endereco_id = 5;

/*9.3 CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

/*a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not*/
/*mulheres com cpf vazio*/
select * from pessoa
WHERE sexo = 'F' AND cpf IS null;
/*homens com cpf vazio*/
select * from pessoa
WHERE sexo = 'M' AND cpf IS null;
/*contatos sem ponto de referencia*/
select * from endereco
WHERE ponto_referencia = ' ' or ponto_referencia IS null;
/*mostra produtos que não estão atrasador*/
select * from pedido
WHERE NOT fk_status_id = 4;
/*b) Criar no mínimo 3 consultas com operadores aritméticos */
/*ingrediente*/
select * from ingrediente
where peso > 1000;
/*produto que gasta menos de 50reais pra fazer*/
select * from produto
where custo < 50;
/*produto que custa menos de 50reais pra fazer e é vendido por mais de 50*/
select * from produto
where custo <= 50 and valor_venda > 50;

/*c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas*/
select descricao as 'Personalização' from decoracao;

select fk_endereco_id as 'Endereço' from fornecedor;

select fk_unid_medida_id as 'Unidade de Medida' from ingrediente;

/*9.4   CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12)*/ 

/*a) Criar outras 5 consultas que envolvam like ou ilike*/
/*seleciona todas as pessoas que o nome começa com a letra j*/
select * from pessoa where nome like 'J%';
/*seleciona todos os produtos que são bolo*/
select * from tipo_produto where nome like 'Bolo%';
/*seleciona todos os endereços que são avenidas*/
select * from endereco where logradouro like 'avenida%';
/*seleciona a decoração ganache*/
select * from decoracao where descricao like 'ganache%';
/*seleciona todos os contados que são gmail*/
select * from contato where email like '%gmail.com%';


/*b) Criar uma consulta para cada tipo de função data apresentada.*/


/*9.5   ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)*/

/*- alterar numero de telefone, email e endereço*/
UPDATE contato
SET email = "pedro@gmail.com",instagram = "@pedrinho_legal"
WHERE id = 3;


/*- alterar numero de telefone, email e endereço*/
UPDATE contato
SET instagram = "sem cadastro"
WHERE instagram is null;


/*- alterar numero de telefone, email e endereço*/
UPDATE contato
SET facebook = "sem cadastro"
WHERE facebook is null;

select * from contato;

/*- alterar numero de telefone, email e endereço*/
UPDATE pessoa
SET cpf = "0"
WHERE cpf is null;
select * from pessoa;
/*- alterar valores de venda e custo de produtos*/
UPDATE produto
SET valor_venda = 65, custo = 55
WHERE valor_venda = 50;
select * from produto;

/*- alterar encomenda/personalização*/
UPDATE DECORACAO
SET descricao = "recheio de nozes, com cobertura de brigadeiro vegano"
WHERE id = 2;
select * from decoracao;


/*- exluir produto atrasados */

/*excluir fornecedor*/

/*- excluir encomendas finalizadas

/*9.6   CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)*/

/*a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado*/

/* b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho*/

/*exibe fornecedor e seus informações de contato*/
SELECT fornecedor.id as 'Código do fornecedor', fornecedor.nome as 'Fornecedor', fornecedor.cnpj, contato.tel_fixo as telefone, contato.email as 'email comercial', endereco.logradouro as rua
FROM fornecedor, contato, endereco
WHERE fornecedor.fk_contato_id = contato.id and fornecedor.fk_endereco_id = endereco.id;

/*mostra todos os pedidos acima de determinado valor, neste exemplo valorias iguais ou acima de 150*/
SELECT pessoa.NOME as 'cliente', pedido.id as 'nº do pedido', pedido.valor
FROM pedido, pessoa, funcionario
WHERE pessoa.id = pedido.fk_pessoa_id AND PEDIDO.VALOR >= 150.00;

/*9.7   CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)*/

/*consulta pessoa e seu cpf*/
SELECT nome, CPF
FROM pessoa
GROUP BY nome, CPF;

/*consulta cep e nome da rua*/
SELECT cep, logradouro as 'nome da rua'
FROM endereco
GROUP BY cep, logradouro;

/*conta a quantidade de pedidos por pessoa*/
SELECT pessoa.nome, COUNT(pedido.Id) as 'quantidade de pedidos'
FROM pedido, pessoa
where pessoa.id = pedido.fk_pessoa_id
GROUP BY fk_pessoa_id;

/*mostra o valor total dos pedidos de cada cliente*/
SELECT pessoa.nome, SUM(pedido.valor) as 'valor total dos pedidos'
FROM pessoa, pedido
where pedido.fk_pessoa_id = pessoa.id
group BY pessoa.nome;

/*mostra a quantidade de pedidos e valor total dos pedidos de cada cliente*/
SELECT pessoa.nome, COUNT(pedido.Id) as 'quantidade de pedidos', SUM(pedido.valor) as 'valor total dos pedidos'
FROM pessoa, pedido
where pedido.fk_pessoa_id = pessoa.id
group BY pessoa.nome;

/*mostra todos o valor total dos pedidos do cliente e o quanto ele já pagou*/
select pedido.id as 'nº do pedido', pessoa.nome as 'cliente', pedido.data_pedido as 'pedido em', pedido.valor as 'valor total', compra_debita.valor_pago as 'valor recebido'
from pedido, pessoa, compra_debita, compra_forma_pag
where pessoa.id = pedido.fk_pessoa_id and compra_forma_pag.fk_compra_debita_id = compra_debita.id;

/*9.8   CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)*/

/*9.9   CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)*/

    /*a) Uma junção que envolva Self Join*/

    /*b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho*/

/*9.10  SUBCONSULTAS (Mínimo 3)*/
