/*todo os clientes*/

/*mulheres com cpf vazio*/
select * from pessoa
WHERE sexo = 'F' AND cpf IS null
ORDER BY Nome;

/*homens com cpf vazio*/
select * from pessoa
WHERE sexo = 'M' AND cpf IS null
ORDER BY Nome;

/*fuincionarios*/
select * from funcionario;

/*tipo fuincionarios*/
select * from tipo_funcionario;

/*contato*/
select * from contato;

/*bairro*/
select * from bairro;

/*cidade*/
select * from cidade;

/*estado*/
select * from estado;

/*país*/
select * from pais;

/*endereço*/
select * from endereco;

/*contatos sem ponto de referencia*/
select * from endereco
WHERE ponto_referencia = ' ' or ponto_referencia IS null
order by logradouro;

/*fornecedor*/
select * from fornecedor;

/*ingrediente*/
select * from ingrediente
where peso > 1000
order by nome;

/*tipo ingrediente*/
select * from tipo_ingrediente;

/*unidade de medida*/
select * from unid_medida;

/*unidade de medida gramas*/
select * from unid_medida
where nome = 'gramas';

/*unidade de medida miligramas*/
select * from unid_medida
where nome = 'miligramas';

/*marca*/
select * from marca;

/*marca igual nestle*/
select * from marca
where nome = 'Nestle'
order by id;

/*receitas*/
select * from receita;

/*produtos*/
select * from produto;

/*produtos pra vencer no dia 7*/
select * from produto
where validade_dia = 7;

/*conferir status*/
select * from pedido
INNER JOIN status ON pedido.fk_status_id = status.id
where nome = 'encomenda';