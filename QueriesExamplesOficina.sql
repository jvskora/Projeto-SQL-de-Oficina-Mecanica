

-- LISTA OFICINAS E SEUS RESPECTIVOS PROPRIETÁRIOS
SELECT o.id_oficina, o.nome AS oficina, c.nome AS proprietario
FROM oficina o
JOIN cliente c ON o.id_proprietario = c.id_cliente;

-- LISTA MECÂNICOS E OS SERVICOS QUE REALIZARAM
SELECT m.nome AS mecanico, s.descricao AS servico, v.modelo AS veiculo
FROM mecanico m
JOIN servico s ON m.id_mecanico = s.id_mecanico
JOIN veiculo v ON s.id_veiculo = v.id_veiculo;

-- LISTA TODOS OS VEICULOS EM MANUTENÇAO

SELECT * FROM veiculo WHERE status_veiculo = 'Em manutenção';

-- relatorio de serviços realizados por mecânico:
SELECT m.nome AS mecanico, COUNT(s.id_servico) AS total_servicos
FROM mecanico m
JOIN servico s ON m.id_mecanico = s.id_mecanico
GROUP BY m.id_mecanico;

-- relatório de serviços realizados com o total de pagamentos:
SELECT s.descricao AS servico, SUM(p.valor_pago) AS total_pago
FROM servico s
JOIN pagamento p ON s.id_servico = p.id_servico
GROUP BY s.id_servico;

-- relatorio de pecas e suas vendas 
SELECT p.nome AS peca, SUM(sp.quantidade) AS total_vendas
FROM peca p
JOIN servico_peca sp ON p.id_peca = sp.id_peca
GROUP BY p.id_peca;
