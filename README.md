# TRABALHO 01:  PROJETO “SUMEI” - Sistema Unificado para Microempreendedor Individual.
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
**Integrantes do grupo**<br>
- Bruno Vicente: brunovn2009@gmail.com<br>
- Francisco Guilherme: franciscoguilherme.v@gmail.com<br> 
- Thainara Amaral: thainara.estudos@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados **_“SUMEI” - Sistema Unificado para Microempreendedor Individual_** e motivação da escolha realizada. <br>

> O grupo *“FABT Projetos”* visa colaborar com o desenvolvimento de projetos para atender uma demanda na sociedade que está começando um empreendimento. Sabendo que, segundo o SEBRAE, 80% das microempresas fecham as portas em menos de 2 anos por descuido com as finanças, garantia de sustentabilidade do negócio e falta de preparo para a rotina do negócio, o grupo “FABT Projetos” propõem um sistema unificado onde o microempreendedor terá nas palmas das mãos todo o controle do seu negócio, desde  gestão dos clientes, pedidos, custo e lucro até fornecedores, matéria prima e funcionários.
 

### 3.MINI-MUNDO Novo<br>

Descrever o mini-mundo! (Não deve ser maior do que 30 linhas) <br>
Entrevista com o usuário e identificação dos requisitos.<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida.

> O projeto proposto pelo grupo **“FABT Projetos”** para o público alvo é um sistema unificado onde o microempreendedor poderá ter a gestão completa do seu negócio.<br>
Neste sistema o microempreendedor poderá cadastrar pessoas, que são seus cliente e funcionários, contendo suas informações pessoais como: _cpf, nome, data de nascimento e sexo_. Funcionário, por sua vez, possui informações exclusivas como: _salário, carga horária e tipo de funcionário_ que contém o cargo exercido. <br>
O funcionário poderá cadastrar os pedidos dos clientes, sendo que os pedidos contém: _data do pedido, data de entrega, valor, status e itens do pedido_ que são os produtos que podem ter decorações personalizadas. 
O sistema também conta com um inventário de receitas e toda a parte de gestão e logísticas dos ingredientes, para isso é preciso a inserção das seguintes informações: _preço, peso, nome do ingrediente, tipo de ingrediente, unidade de medida e marca_ que são fornecidos por um ou mais dos fornecedores nos quais temos catalogados com o _contatos e endereços_, facilitando assim a busca por ingredientes de forma rápida e segura. Os ingredientes formam uma ou várias receitas que contém informações como: _quantidade de cada ingrediente, modo de preparo, seu nome e seu custo_. Consequentemente, as receitas formam os produtos que são criados a partir de uma ou mais receitas. Os produtos são categorizados por um _tipo de produto, unidade de medida e decoração_, além de ter informações como: _nome, valor de venda, custo, lucro e prazo de validade._ <br>
Apesar de tudo, é indispensável a gestão de vendas, desta forma o projeto dispõem de um controle de estoque dos produtos fabricados rotineiramente possuindo sua _data de fabricação, data de validade, quantidade disponível, lote, valor e status_ para identificar ser uma encomenda ou produto a pronta entrega.  <br>
Além disso, o sistema não poderia deixar de contar com a gestão de pagamento, por isso será implementado uma gestão no qual o cliente poderá pagar em parcelamentos, ou à vista, e da forma como desejar, os dados para que isso ocorra são: _número de parcelas, data de compra, valor total pago, quantidade e número de parcela._ <br>
Dessa forma o microempreendedor poderá ter relatórios de produtos mais vendidos, ingredientes mais usados, gastos etc.

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/trabalhobd1ifes/trab01/blob/master/Inicio-INSERINDO.png)<br>

![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom]
(https://github.com/trabalhobd1ifes/trab01/blob/master/SUMEI.pdf)
#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!
    
> A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que informe quais são os gerentes de cada departamento incluindo as seguintes informações: número do departamento,  nome do departamento, e nome do gerente.
* Relatório de empregados por projeto incluindo as seguintes informações: número do projeto, nome do projeto, rg do empregado, nome do empregado e quantidade de horas de trabalho do empregado alocadas ao projeto.
* Relatório de empregados com dependentes incluindo as seguintes informações: rg do empregado, nome do empregado, nome do dependente, tipo de relação, data de nascimento do dependente e sexo do dependente.
* Relatório com a quantidade de empregados por cada departamento incluindo as seguintes informações: nome do departamento, supervisor e quantidade de empregados alocados no departamento.
* Relatório de supervisores e supervisionados incluindo as seguintes informações: nome do supervisor e nome do supervisionado.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    e deve ser criada antes do modelo conceitual
    c) Após criada esta tabela não deve ser modificada, pois será comparada com os resultados finais na conclusão do trabalho
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
>## Marco de Entrega 01 em: (06/09/2018)<br>

### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/trabalhobd1ifes/trab01/blob/master/img_conceitual_ultimato.PNG) 
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [pessoa]: id, nome, sexo, CPF, data de nascimento. Herda informações de contato e endereço através de seus identificadores como chaves estrangeiras.
    [funcionario]: id, salario, carga horária, nome de usuário do sistema e sua senha. herda dados de pessoa atraves da chave estrangeira fk_pessoa_id.
    [tipo_funcionario]: id, cargo.
    [contato]: Informações de contato referente de cada pessoa cadastrada no sistema;
    [bairro]: o nome da cidade, sua identificação e a cidade em que está localizada;
    [cidade]: id, nome, estado
    [estado] id, nome, sigla, país
    [pais]: id, nome
    [endereco]: id, logradouro, CEP, numero, ponto de referência, possue o identificador de bairro como chave estrangeira
    [fornecedor]: id, nome, CNPJ, possue como chaves estrangeiras o idetificador de endereço e contato;
    [ingrediente]: id, preco, nome, peso, se relaciona por meio de chaves estrangeiras de identificação da unidade de medida e tipo de ingrediente.
    [tipo_ingrediente]: id, nome, pericividade,    
    [unid_medida]: id, nome
    [marca]: id, nome, linha
    [receita]: id, nome, modo de preparo
    [produto]: id, nome, valor de venda, lucro, custo, dias de validade, peso. se relacionará externamente com a identificação do tipo de produto, identificação de decoração e identificação da unidade de medida.
    [pedido]: id, valor, data que o pedido foi realizado, pagamento de parcela inicia, data de entrega e quantidade. As relações externas se dão pelo identificação de pessoa, status e funcionário.
    [tipo_produto]: id, nome, linha
    [decoracao]: id, descrição da decoração, link para imagem
    [cor: id, nome.
    [item_pedido_contem]: id, relações externas, através de chaves estrangeiras, com decoração, status, produto e pedido.
    [estoque_disponivel_produzido]: id, valor, data de validade, data de fabricação, quantidade, lote. Suas chaves estrangeiras são o identificadores de pedido e produto.
    [compra_debita]: id, numero de parcelas, data da compra, valor total, valor pago, quantidade, e os identificadores de pessoa e estoque disponível produzido.
    [forma_pagamento]: id, nome, taxa de juros
    [status]: id, nome
    [ramo_atividade]: id, nome
    [estoque_ingre]: id, quantidade na unidade de medida. Possue ligações externas com o identificador de infregiente_fornecimento e identificação da marca.
    [ingrediente_fornecimento]: id, relações externas por meio do identificador de ingrediente e fornecedor.
    [ingrediente_marca_tem]: id. suas ligações externas se dão atraves do identificadores de marca e ingrediente.
    [funcionario_tipo_funcionario]: id. possue duas chaves estrangeiras, sendo elas o identificadores de funcionário e tipo de funcionário.
    [receita_produto]: id, fk_receita_id, fk_produto_id.
    [ingrediente_receita]: id, quantidade, e preco_quant_usada. Ligações externas com ingrediente,receita através de seus identificadores únicos.
    [decoracao_cor]: id, fk_cor_id, fk_decoracao_id
    [compra_forma_pag]: id, suas chaves externa são os identificadores de forma de pagamento e compra debitada.
    [atividade_fornecedor]: id. suas chaves estrangeiras são o identificador de ramo de atividade e de fornecedor;

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    [pessoa]: tabela que armazena dados das pessoas.
    [funcionario]: Tablela qe armazena informaçoes do funcionáeio e está relacionada à tabela pessoa.
    [tipo_funcionario]: Identifica o tipo de funcionário, está relacionada a funcionário.
    [contato]: Informações de contato referente de cada pessoa cadastrada no sistema;
    [bairro] o nome da cidade, sua identificação e a cidade em que está localizada;
    [cidade]: Informações das cidades cadastradas no sistema.
    [estado]: Armazena os estados(UF) cadastrados no sistema.
    [pais]: Tabela que armazena todos os países cadastrados.
    [endereco]: Tabelas com informações de rua das pessoas.
    [fornecedor]: Esta tabela concentra as informações gerais do fornecedor.
    [ingrediente]: Tabelas com informaçoes gerais de cada ingrediente utilizado nas receitas.
    [tipo_ingrediente]: tabale com o tipo de ingrediente. 
    [unid_medida]: Esta tabela contém as unidades de medidas na utilização de ingredientes para a produção de receitas.
    [marca]: Armazena as marcas de ingredientes utilizados.
    [receita]: Armazena o modo de preparo dos pedidos.
    [produto]: Informações gerais sobre cada produto fabricado/comercializado pela empresa.
    [pedido]: Esta tabela armazena informações gerais de cada pedido realizado, como o valor, a pessoa que pefiu e o funcionario que efetuou a venda e status.
    [tipo_produto]: Armazena os tipos/linhas de produtos comercializados.
    [decoracao]: Esta tabela armazena informações sobre a decoração desejada.
    [cor]: Tabela que apresenta todas as cores disponíveis/cadastradas no sistema.
    [item_pedido_contem]: Armazenas informações de decoração das encomendas/pedidos.
    [estoque_disponivel_produzido]: Tabela que armazena a quantidade de cada produto produzido qu está disponível em estoque.
    [compra_debita]: Tabela que registra dados de pagamentos efetuados por clientes.
    [forma_pagamento]: Tabela que apresenta as formas de pagamento disponíveis.
    [status]: Tabela que contem os estados que os pedidos podem apresentar durante o processo de produção e pedidos realizados.
    [ramo_atividade]: Tabela que armazena os ramos de atividades dos fornecedores.
    [estoque_ingre]: Estoque de ingredientes, relaciona o ingrediente e sua quantidade no sistema, além de informações de fornecimento e marca.
    [ingrediente_fornecimento]: Relaciona o ingrediente com o fornecedor.
    [ingrediente_marca_tem]: Relaciona os igredientes e suas marcas/produtores.
    [funcionario_tipo_funcionario]: Relaciona funcionário com sua função.
    [receita_produto]: Relaciona uma receita no sistema com um produto cadastrado.
    [ingrediente_receita]: Relaciona o ingrediente com a/as receita/as que onde ele se faz necessário.
    [decoracao_cor]: Informações referentes à decorações relacionadas a cores.
    [compra_forma_pag]: Relaciona forma de pagamento com valor pago.
    [atividade_fornecedor]: Armazena e relacionainformações relacionadas à atividade do fornecedor.
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/trabalhobd1ifes/trab01/blob/master/Logico_endgame.png)

### 7	MODELO FÍSICO<br>
https://github.com/trabalhobd1ifes/trab01/blob/master/criacao_bd_endgame.sql        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico 
        b) formato .SQL
        https://github.com/trabalhobd1ifes/trab01/blob/master/insert_endgame.sql

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (create para tabelas e estruturas de dados + dados a serem inseridos)
        https://github.com/trabalhobd1ifes/trab01/blob/master/criacao_e_insert_endgame.sql
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script
        (Drop para exclusão de tabelas + create para tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL
#### 8.4 Principais fluxos de informação e principais tabelas do sistema
        a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
        b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
        c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
>## Marco de Entrega 03 em: (27/09/18) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    O código completo referentes à este tópico pode ser encontrado no arquivo topico9.sql
    
    /*Para deixar as buscas mais interessantes, segue abaixo mais algumas linhas de inserção de dados em algumas das tabelas.*/
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

    INSERT INTO   tipo_produto   (  linha  ,   id  ,   nome  ) VALUES 
    ('tradicional', '6', 'Vegan');

    INSERT INTO  produto  ( nome ,  valor_venda ,  lucro ,  custo ,  validade_dia, peso, id , fk_tipo_produto_id, fk_decoracao_id,fk_unid_medida_id ) 
    VALUES ('brigadeiro', '2', '1', '1', '7','10', '5', '6', '2','1'), 
    ('cupcake', '5', '10', '20', '5','3','7', '6', '2','1'), 
    ('alfajor', '3', '10', '40', '7','3', '8', '6', '2','1'), 
    ('milkshake', '8', '3', '5', '1','200', '9', '6', '2','2');
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
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
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
    /*Seleciona pessoas com o campo cpf vazio*/
    select nome from pessoa where CPF is NULL;
    
    /*Seleciona pessoas com o campo cpf vaziprodutos da linha tracicional*/
    select nome from tipo_produto where linha ='tradicional';
    
    /*Seleciona pessoas com o campo cpf vazioseleciona produtos medidos em gramas*/
    select nome from ingrediente where fk_unid_medida_id = 1;
    
    /*Seleseleciona fornecedor do endereço 'avenida mauro batalha'*/
    select nome from fornecedor where fk_endereco_id = 5;

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
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
    
    b) Criar no mínimo 3 consultas com operadores aritméticos    
    
    /*ingrediente*/
    select * from ingrediente
    where peso > 1000;
    
    /*produto que gasta menos de 50reais pra fazer*/
    select * from produto
    where custo < 50;
    
    /*produto que custa menos de 50reais pra fazer e é vendido por mais de 50*/
    select * from produto
    where custo <= 50 and valor_venda > 50;
    
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
    select descricao as 'Personalização' from decoracao;
    
    select fk_endereco_id as 'Endereço' from fornecedor;
    
    select fk_unid_medida_id as 'Unidade de Medida' from ingrediente;

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
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
    
    /*- alterar numero de telefone, email e endereço*/
    UPDATE pessoa
    SET cpf = "0"
    WHERE cpf is null;
    
    /*- alterar valores de venda e custo de produtos*/
    UPDATE produto
    SET valor_venda = 65, custo = 55
    WHERE valor_venda = 50;
    
    /*- alterar encomenda/personalização*/
    UPDATE DECORACAO
    SET descricao = "recheio de nozes, com cobertura de brigadeiro vegano"
    WHERE id = 2;

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
        /*exibe fornecedor e seus informações de contato*/
       SELECT fornecedor.id as 'Código do fornecedor', fornecedor.nome as 'Fornecedor', fornecedor.cnpj, contato.tel_fixo as telefone, contato.email as 'email comercial', endereco.logradouro as rua
       FROM fornecedor, contato, endereco
       WHERE fornecedor.fk_contato_id = contato.id and fornecedor.fk_endereco_id = endereco.id;

       /*mostra todos os pedidos acima de determinado valor, neste exemplo valorias iguais ou acima de 150*/
       SELECT pessoa.NOME as 'cliente', pedido.id as 'nº do pedido', pedido.valor
       FROM pedido, pessoa, funcionario
       WHERE pessoa.id = pedido.fk_pessoa_id AND PEDIDO.VALOR >= 150.00;

       /*seleciona todos os produtos veganos*/
       select produto.nome, tipo_produto.nome
       FROM tipo_produto, produto
       where tipo_produto.id = produto.fk_tipo_produto_id and tipo_produto.nome = 'Vegan';

       /*mostra todos o valor total dos pedidos do cliente e o quanto ele já pagou*/
       select pedido.id as 'nº do pedido', pessoa.nome as 'cliente', pedido.data_pedido as 'pedido em', pedido.valor as 'valor total', compra_debita.valor_pago as 'valor recebido'
       from pedido, pessoa, compra_debita, compra_forma_pag
       where pessoa.id = pedido.fk_pessoa_id and compra_forma_pag.fk_compra_debita_id = compra_debita.id;

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
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

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
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
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
Link do slide da apresentação: https://prezi.com/view/SwY6QrNtQ0YuKlqOXBct/ 

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (08/11/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


