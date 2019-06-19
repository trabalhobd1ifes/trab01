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

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")
![Arquivo PDF do Protótipo Balsamiq feito para Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/EmpresaDevcom.pdf?raw=true "Empresa Devcom")
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
    pessoa: id,	nome,	sexo,	CPF,	data de nascimento. Herda informações de contato e endereço através de seus identificadores como chaves estrangeiras.
    funcionario: id, salario,	carga horária,	nome de usuário do sistema e sua	senha. herda dados de pessoa atraves da chave estrangeira fk_pessoa_id.
    tipo_funcionario: id, cargo.
    contato: Informações de contato referente de cada pessoa cadastrada no sistema;
    bairro: o nome da cidade, sua identificação e a cidade em que está localizada;
    cidade: id, nome, estado
    estado: id, nome, sigla, país
    pais: id, nome
    endereco: id,	logradouro,	CEP,	numero,	ponto de referência,	possue o identificador de bairro como chave estrangeira
    fornecedor: id,	nome,	CNPJ, possue como chaves estrangeiras o idetificador de endereço e contato;
    ingrediente: id, preco,	nome,	peso, se relaciona por meio de chaves estrangeiras de identificação da unidade de medida e tipo de ingrediente.
    tipo_ingrediente: id,	nome,	pericividade,    
    rom unid_medida: id, nome
    marca: id,	nome,	linha
    receita: id,	nome,	modo de preparo
    produto: id, nome,	valor de venda,	lucro,	custo,	dias de validade,	peso. se relacionará externamente com a identificação do tipo de produto, identificação de decoração e identificação da unidade de medida.
    pedido: id, valor,	data que o pedido foi realizado, pagamento de	parcela inicia, data de entrega e quantidade. As relações externas se dão pelo identificação de pessoa, status e funcionário.
    tipo_produto: id, nome, linha
    decoracao: id, descrição da decoração, link para imagem
    cor: id, nome.
    item_pedido_contem: id, relações externas, através de chaves estrangeiras, com decoração, status, produto e pedido.
    estoque_disponivel_produzido: id, valor,	data de validade,	data de fabricação,	quantidade,	lote. Suas chaves estrangeiras são o identificadores de pedido e produto.
    compra_debita:	id, numero de parcelas,	data da compra,	valor total,	valor pago,	quantidade, e os identificadores de pessoa e estoque disponível produzido.
    forma_pagamento: id,	nome,	taxa de juros
    status: id, nome
    ramo_atividade: id, nome
    estoque_ingre: id,	quantidade na unidade de medida. Possue ligações externas com o identificador de infregiente_fornecimento e identificação da marca.
    ingrediente_fornecimento: id, relações externas por meio do identificador de ingrediente e fornecedor.
    ingrediente_marca_tem: id. suas ligações externas se dão atraves do identificadores de marca e ingrediente.
    funcionario_tipo_funcionario: id. possue duas chaves estrangeiras, sendo elas o identificadores de funcionário e tipo de funcionário.
    receita_produto: id, fk_receita_id,	fk_produto_id	
    ingrediente_receita: id, quantidade, e	preco_quant_usada. Ligações externas com ingrediente,receita através de seus identificadores únicos.
    decoracao_cor: id, fk_cor_id,	fk_decoracao_id	
    compra_forma_pag: id, suas chaves externa são os identificadores de forma de pagamento e compra debitada.
    atividade_fornecedor: id. suas chaves estrangeiras são o identificador de ramo de atividade e de fornecedor;

>## Marco de Entrega 02 em: (17/09/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    pessoa: tabela que armazena dados das pessoas.
    funcionario: Tablela qe armazena informaçoes do funcionáeio e está relacionada à tabela pessoa.
    tipo_funcionario: Identifica o tipo de funcionário, está relacionada a funcionário.
    contato: Informações de contato referente de cada pessoa cadastrada no sistema;
    bairro: o nome da cidade, sua identificação e a cidade em que está localizada;
    cidade: Informações das cidades cadastradas no sistema.
    estado: Armazena os estados(UF) cadastrados no sistema.
    pais: Tabela que armazena todos os países cadastrados.
    endereco: Tabelas com informações de rua das pessoas.
    fornecedor: Esta tabela concentra as informações gerais do fornecedor.
    ingrediente: Tabelas com informaçoes gerais de cada ingrediente utilizado nas receitas.
    tipo_ingrediente: tabale com o tipo de ingrediente. 
    unid_medida: Esta tabela contém as unidades de medidas na utilização de ingredientes para a produção de receitas.
    marca: Armazena as marcas de ingredientes utilizados.
    receita: Armazena o modo de preparo dos pedidos.
    produto: Informações gerais sobre cada produto fabricado/comercializado pela empresa.
    pedido: Esta tabela armazena informações gerais de cada pedido realizado, como o valor, a pessoa que pefiu e o funcionario que efetuou a venda e status.
    tipo_produto: Armazena os tipos/linhas de produtos comercializados.
    decoracao: Esta tabela armazena informações sobre a decoração desejada.
    cor: Tabela que apresenta todas as cores disponíveis/cadastradas no sistema.
    item_pedido_contem: Armazenas informações de decoração das encomendas/pedidos.
    estoque_disponivel_produzido: Tabela que armazena a quantidade de cada produto produzido qu está disponível em estoque.
    compra_debita: Tabela que registra dados de pagamentos efetuados por clientes.
    forma_pagamento: Tabela que apresenta as formas de pagamento disponíveis.
    status: Tabela que contem os estados que os pedidos podem apresentar durante o processo de produção e pedidos realizados.
    ramo_atividade: Tabela que armazena os ramos de atividades dos fornecedores.
    estoque_ingre: Estoque de ingredientes, relaciona o ingrediente e sua quantidade no sistema, além de informações de fornecimento e marca.
    ingrediente_fornecimento: Relaciona o ingrediente com o fornecedor.
    ingrediente_marca_tem: Relaciona os igredientes e suas marcas/produtores.
    funcionario_tipo_funcionario: Relaciona funcionário com sua função.
    receita_produto: Relaciona uma receita no sistema com um produto cadastrado.
    ingrediente_receita: Relaciona o ingrediente com a/as receita/as que onde ele se faz necessário.
    decoracao_cor: Informações referentes à decorações relacionadas a cores.
    compra_forma_pag: Relaciona forma de pagamento com valor pago.
    atividade_fornecedor: Armazena e relacionainformações relacionadas à atividade do fornecedor.
   
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
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (18/10/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

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


