use oficina;

-- Inserindo 10 dados na tabela Cliente
INSERT INTO cliente (nome, tipo_cliente, email, telefone, documento, data_cadastro, status_cliente, nivel_fidelidade, pontos_fidelidade)
VALUES
  ('João Silva', 'PF', 'joao@exemplo.com', '{"celular": "123456789"}', '12345678901', '2025-01-15', 'Ativo', 'Bronze', 100),
  ('Maria Oliveira', 'PJ', 'maria@exemplo.com', '{"celular": "987654321"}', '12345678000195', '2025-01-10', 'Ativo', 'Prata', 200),
  ('Pedro Souza', 'PF', 'pedro@exemplo.com', '{"celular": "1122334455"}', '12345678902', '2025-01-09', 'Ativo', 'Ouro', 300),
  ('Ana Costa', 'PJ', 'ana@exemplo.com', '{"celular": "5566778899"}', '12345678000196', '2025-01-08', 'Inativo', 'Bronze', 50),
  ('Carlos Almeida', 'PF', 'carlos@exemplo.com', '{"celular": "9988776655"}', '12345678903', '2025-01-07', 'Ativo', 'Prata', 200),
  ('Luciana Pereira', 'PJ', 'luciana@exemplo.com', '{"celular": "4433221100"}', '12345678000197', '2025-01-06', 'Ativo', 'Bronze', 100),
  ('Roberto Oliveira', 'PF', 'roberto@exemplo.com', '{"celular": "5544332211"}', '12345678904', '2025-01-05', 'Ativo', 'Prata', 250),
  ('Fernanda Gomes', 'PJ', 'fernanda@exemplo.com', '{"celular": "6677889900"}', '12345678000198', '2025-01-04', 'Inativo', 'Ouro', 400),
  ('José Santos', 'PF', 'jose@exemplo.com', '{"celular": "2233445566"}', '12345678905', '2025-01-03', 'Ativo', 'Bronze', 150),
  ('Patricia Lima', 'PJ', 'patricia@exemplo.com', '{"celular": "3344556677"}', '12345678000199', '2025-01-02', 'Ativo', 'Prata', 200);

-- Inserindo 10 dados na tabela Oficina
INSERT INTO oficina (nome, descricao, endereco, telefone, id_proprietario, horario_funcionamento, capacidade)
VALUES
  ('Oficina do João', 'Oficina especializada em carros nacionais', 'Rua A, 123', '{"telefone": "321654987"}', 1, 'Seg-Sex: 8h-18h', 10),
  ('Oficina da Maria', 'Oficina especializada em veículos elétricos', 'Rua B, 456', '{"telefone": "654987321"}', 2, 'Seg-Sex: 9h-17h', 8),
  ('Oficina da Ana', 'Oficina especializada em veículos de luxo', 'Rua C, 789', '{"telefone": "987321654"}', 4, 'Seg-Sex: 8h-18h', 6),
  ('Oficina do Carlos', 'Oficina de manutenção geral de carros', 'Rua D, 101', '{"telefone": "9988772211"}', 5, 'Seg-Sex: 8h-18h', 12),
  ('Oficina da Luciana', 'Oficina especializada em eletricidade automotiva', 'Rua E, 202', '{"telefone": "4433221100"}', 6, 'Seg-Sex: 9h-17h', 8),
  ('Oficina do Roberto', 'Oficina com foco em serviços rápidos', 'Rua F, 303', '{"telefone": "5544332211"}', 7, 'Seg-Sex: 9h-18h', 5),
  ('Oficina da Fernanda', 'Oficina de customização automotiva', 'Rua G, 404', '{"telefone": "6677889900"}', 8, 'Seg-Sex: 10h-18h', 7),
  ('Oficina do José', 'Oficina especializada em veículos antigos', 'Rua H, 505', '{"telefone": "2233445566"}', 9, 'Seg-Sex: 8h-18h', 9),
  ('Oficina da Patricia', 'Oficina especializada em veículos esportivos', 'Rua I, 606', '{"telefone": "3344556677"}', 10, 'Seg-Sex: 9h-17h', 6),
  ('Oficina do Pedro', 'Oficina focada em atendimento a frotas', 'Rua J, 707', '{"telefone": "1122334455"}', 3, 'Seg-Sex: 8h-18h', 15);

-- Inserindo 10 dados na tabela Mecânico
INSERT INTO mecanico (nome, especialidade, funcao, data_contratacao, id_oficina, habilidades, escala_trabalho, experiencia, nota_media)
VALUES
  ('Carlos Souza', 'Mecânica Geral', 'Chefe de Oficina', '2025-01-01', 1, 'Troca de óleo, suspensão, motor', 'Segunda a Sexta', '5 anos', 4.8),
  ('Luciana Lima', 'Eletricista', 'Mecânico', '2025-01-02', 2, 'Instalação de baterias, manutenção elétrica', 'Segunda a Sexta', '3 anos', 4.6),
  ('Pedro Rocha', 'Mecânica de Suspensão', 'Mecânico', '2025-01-03', 3, 'Suspensão, amortecedores', 'Segunda a Sexta', '6 anos', 4.7),
  ('Ana Costa', 'Mecânica Geral', 'Mecânico', '2025-01-04', 4, 'Troca de óleo, motor', 'Segunda a Sexta', '4 anos', 4.5),
  ('Carlos Almeida', 'Mecânica de Freios', 'Mecânico', '2025-01-05', 5, 'Sistemas de freios', 'Segunda a Sexta', '7 anos', 4.9),
  ('Luciana Pereira', 'Eletricista', 'Mecânico', '2025-01-06', 6, 'Instalação de baterias', 'Segunda a Sexta', '5 anos', 4.7),
  ('Roberto Oliveira', 'Mecânica Geral', 'Mecânico', '2025-01-07', 7, 'Troca de óleo, motores', 'Segunda a Sexta', '3 anos', 4.6),
  ('Fernanda Gomes', 'Mecânica de Suspensão', 'Mecânico', '2025-01-08', 8, 'Suspensão, amortecedores', 'Segunda a Sexta', '4 anos', 4.8),
  ('José Santos', 'Mecânica Geral', 'Mecânico', '2025-01-09', 9, 'Troca de óleo, motores', 'Segunda a Sexta', '2 anos', 4.5),
  ('Patricia Lima', 'Mecânica Geral', 'Mecânico', '2025-01-10', 10, 'Motor, sistema elétrico', 'Segunda a Sexta', '5 anos', 4.7);

-- Inserindo 10 dados na tabela Veículo
INSERT INTO veiculo (modelo, marca, ano, numero_chassi, numero_motor, id_cliente, tipo_combustivel, status_veiculo, foto_veiculo, observacoes)
VALUES
  ('Fusca', 'Volkswagen', 1995, '123ABC456XYZ', 'XYZ123456789', 1, 'Gasolina', 'Em manutenção', 'foto_fusca.jpg', 'Veículo precisa de troca de peças.'),
  ('Tesla Model 3', 'Tesla', 2023, '987ZYX654ABC', 'ABC987654321', 2, 'Elétrico', 'Pronto', 'foto_tesla.jpg', 'Sem observações.'),
  ('Gol', 'Volkswagen', 2000, 'XYZ123ABC456', 'DEF987654321', 3, 'Gasolina', 'Aguardando Peças', 'foto_gol.jpg', 'Esperando peças de suspensão.'),
  ('Civic', 'Honda', 2019, 'ABC123XYZ456', 'XYZ123ABC789', 4, 'Gasolina', 'Pronto', 'foto_civic.jpg', 'Realizado ajuste no sistema de injeção eletrônica.'),
  ('Pajero', 'Mitsubishi', 2017, 'DEF456XYZ789', 'GHI123XYZ456', 5, 'Diesel', 'Em manutenção', 'foto_pajero.jpg', 'Precisando trocar bomba de combustível.'),
  ('Hilux', 'Toyota', 2021, '123DEF456ABC', 'XYZ987654321', 6, 'Diesel', 'Aguardando Peças', 'foto_hilux.jpg', 'Aguardando peças de suspensão.'),
  ('Fiat 500', 'Fiat', 2015, 'XYZ123ABC987', 'ABC123XYZ456', 7, 'Gasolina', 'Pronto', 'foto_fiat.jpg', 'Revisão geral.'),
  ('X5', 'BMW', 2018, 'ABC456DEF789', 'DEF123XYZ987', 8, 'Diesel', 'Em manutenção', 'foto_x5.jpg', 'Revisão do sistema de ar condicionado.'),
  ('Focus', 'Ford', 2016, 'XYZ789ABC123', 'ABC987654321', 9, 'Gasolina', 'Pronto', 'foto_focus.jpg', 'Sem observações.'),
  ('A3', 'Audi', 2022, 'DEF987ABC654', 'XYZ123456789', 10, 'Gasolina', 'Em manutenção', 'foto_a3.jpg', 'Troca de óleo e filtros.');

-- Inserindo 10 dados na tabela Orcamento
INSERT INTO orcamento (descricao, valor_total, status_orcamento, data_criacao)
VALUES
  ('Troca de óleo e suspensão', 500.00, 'Em Aprovacao', '2025-01-10'),
  ('Manutenção elétrica no sistema de baterias', 1500.00, 'Aprovado', '2025-01-12'),
  ('Revisão geral do motor e suspensão', 1200.00, 'Aprovado', '2025-01-13'),
  ('Troca de bomba de combustível', 800.00, 'Aprovado', '2025-01-14'),
  ('Troca de óleo e filtros', 250.00, 'Aprovado', '2025-01-15'),
  ('Instalação de novos amortecedores', 900.00, 'Aprovado', '2025-01-16'),
  ('Substituição de peças do sistema elétrico', 2000.00, 'Aprovado', '2025-01-17'),
  ('Troca de correia dentada', 400.00, 'Em Aprovacao', '2025-01-18'),
  ('Manutenção de ar condicionado', 450.00, 'Em Aprovacao', '2025-01-19'),
  ('Reparo no sistema de injeção eletrônica', 1100.00, 'Em Aprovacao', '2025-01-20');

-- Inserindo dados na tabela Serviço
INSERT INTO servico (descricao, data, id_veiculo, id_mecanico, id_orcamento, prioridade, categoria_servico, tags, duracao_estimada, avaliacao_cliente)
VALUES
  ('Troca de óleo e verificação da suspensão', '2025-01-14', 1, 1, 1, 'Média', 'Troca de Peças', 'Óleo, Suspensão', '02:00:00', 5),
  ('Troca de bateria do Tesla', '2025-01-13', 2, 2, 2, 'Alta', 'Eletricidade', 'Bateria, Sistema', '04:00:00', 4),
  ('Reparo no sistema de ar condicionado', '2025-01-12', 6, 3, 3, 'Alta', 'Manutenção', 'Ar condicionado', '03:30:00', 4),
  ('Revisão de motor e suspensão', '2025-01-11', 7, 4, 4, 'Baixa', 'Revisão', 'Motor, Suspensão', '04:00:00', 5),
  ('Troca de óleo e filtros', '2025-01-10', 8, 5, 5, 'Média', 'Troca de Peças', 'Óleo, Filtros', '02:30:00', 5),
  ('Manutenção de sistema de freios', '2025-01-09', 9, 6, 6, 'Alta', 'Manutenção', 'Freios', '03:00:00', 4),
  ('Troca de correia dentada', '2025-01-08', 10, 7, 7, 'Média', 'Troca de Peças', 'Correia dentada', '02:00:00', 5),
  ('Instalação de novos amortecedores', '2025-01-07', 5, 8, 8, 'Baixa', 'Instalação', 'Amortecedores', '03:00:00', 4),
  ('Reparo no sistema de injeção eletrônica', '2025-01-06', 4, 9, 9, 'Alta', 'Reparo', 'Injeção eletrônica', '03:30:00', 4),
  ('Revisão de sistema elétrico', '2025-01-05', 3, 10, 10, 'Média', 'Revisão', 'Sistema elétrico', '04:00:00', 5);

-- Inserindo dados na tabela Peça
INSERT INTO peca (nome, descricao, preco, codigo_barras, validade, valor_compra, estoque_minimo, fornecedor)
VALUES
  ('Óleo 5W-30', 'Óleo para motor, recomendado para carros nacionais', 120.00, '1234567890123', '2025-12-31', 80.00, 5, 'Fornecedor A'),
  ('Bateria Tesla', 'Bateria para modelo Tesla', 4500.00, '9876543210987', '2026-01-01', 4000.00, 2, 'Fornecedor B'),
  ('Amortecedor Kyb', 'Amortecedor para carros de passeio', 300.00, '3216549870123', '2025-11-30', 200.00, 4, 'Fornecedor C'),
  ('Filtro de Óleo', 'Filtro de óleo para carros nacionais', 50.00, '6549873216547', '2025-10-31', 35.00, 6, 'Fornecedor D'),
  ('Correia Dentada', 'Correia dentada para motores 1.6', 100.00, '7896541239876', '2025-09-30', 75.00, 4, 'Fornecedor E'),
  ('Pastilha de Freio', 'Pastilha de freio para veículos pequenos', 80.00, '4561237896547', '2025-08-31', 60.00, 3, 'Fornecedor F'),
  ('Kit de Filtro de Ar', 'Kit de filtro de ar para veículos de pequeno porte', 40.00, '8529637412580', '2025-07-30', 30.00, 5, 'Fornecedor G'),
  ('Bateria 12V', 'Bateria para veículos populares', 200.00, '9871234567890', '2025-06-30', 150.00, 5, 'Fornecedor H'),
  ('Sistema de Injeção Eletrônica', 'Sistema completo de injeção eletrônica', 1800.00, '6549873214560', '2026-02-28', 1500.00, 1, 'Fornecedor I'),
  ('Farol de LED', 'Farol de LED para carros esportivos', 350.00, '7412589630254', '2025-05-31', 250.00, 3, 'Fornecedor J');

-- Inserindo dados na tabela Estoque
INSERT INTO estoque (id_peca, quantidade, local_armazenamento, quantidade_reservada, data_ultima_atualizacao)
VALUES
  (1, 50, 'Prateleira 1', 5, '2025-01-15'),
  (2, 10, 'Prateleira 2', 2, '2025-01-12'),
  (3, 30, 'Prateleira 3', 10, '2025-01-14'),
  (4, 100, 'Prateleira 4', 10, '2025-01-13'),
  (5, 80, 'Prateleira 5', 5, '2025-01-11'),
  (6, 60, 'Prateleira 6', 3, '2025-01-10'),
  (7, 40, 'Prateleira 7', 7, '2025-01-09'),
  (8, 25, 'Prateleira 8', 8, '2025-01-08'),
  (9, 15, 'Prateleira 9', 3, '2025-01-07'),
  (10, 20, 'Prateleira 10', 4, '2025-01-06');

-- Inserindo dados na tabela Pagamento
INSERT INTO pagamento (id_servico, data_pagamento, valor_total, valor_pago, saldo_devido, forma_pagamento, desconto, status_pagamento)
VALUES
  (1, '2025-01-14', 500.00, 500.00, 0.00, '{"cartao": "Visa"}', 0.00, 'Pago'),
  (2, '2025-01-13', 1500.00, 1500.00, 0.00, '{"cartao": "Mastercard"}', 0.00, 'Pago'),
  (3, '2025-01-12', 1200.00, 1200.00, 0.00, '{"cartao": "Visa"}', 0.00, 'Pago'),
  (4, '2025-01-11', 800.00, 800.00, 0.00, '{"cartao": "Mastercard"}', 0.00, 'Pago'),
  (5, '2025-01-10', 250.00, 250.00, 0.00, '{"cartao": "Visa"}', 0.00, 'Pago'),
  (6, '2025-01-09', 900.00, 900.00, 0.00, '{"cartao": "Mastercard"}', 0.00, 'Pago'),
  (7, '2025-01-08', 2000.00, 2000.00, 0.00, '{"cartao": "Visa"}', 0.00, 'Pago'),
  (8, '2025-01-07', 400.00, 400.00, 0.00, '{"cartao": "Mastercard"}', 0.00, 'Pago'),
  (9, '2025-01-06', 450.00, 450.00, 0.00, '{"cartao": "Visa"}', 0.00, 'Pago'),
  (10, '2025-01-05', 1100.00, 1100.00, 0.00, '{"cartao": "Mastercard"}', 0.00, 'Pago');

-- Inserindo dados na tabela Usuário
INSERT INTO usuario (nome, email, senha_hash, perfil_acesso, ativo)
VALUES
  ('Administrador', 'admin@oficina.com', 'senha_hash_example', 'Admin', TRUE),
  ('Carlos Oliveira', 'carlos@oficina.com', 'senha_hash_example', 'Mecânico', TRUE),
  ('José Lima', 'jose@oficina.com', 'senha_hash_example', 'Admin', TRUE),
  ('Fernanda Souza', 'fernanda@oficina.com', 'senha_hash_example', 'Mecânico', TRUE),
  ('Patricia Costa', 'patricia@oficina.com', 'senha_hash_example', 'Mecânico', TRUE),
  ('Ricardo Almeida', 'ricardo@oficina.com', 'senha_hash_example', 'Admin', TRUE),
  ('Roberta Rocha', 'roberta@oficina.com', 'senha_hash_example', 'Mecânico', TRUE),
  ('Lucas Silva', 'lucas@oficina.com', 'senha_hash_example', 'Admin', TRUE),
  ('Mariana Ferreira', 'mariana@oficina.com', 'senha_hash_example', 'Mecânico', TRUE),
  ('Renato Dias', 'renato@oficina.com', 'senha_hash_example', 'Admin', TRUE);

-- Inserindo dados na tabela Relatório de Desempenho do Mecânico
INSERT INTO relatorio_mecanico (id_mecanico, total_servicos, total_avaliacoes, media_avaliacoes)
VALUES
  (1, 10, 50, 4.8),
  (2, 8, 40, 4.6),
  (3, 9, 45, 4.7),
  (4, 7, 35, 4.5),
  (5, 6, 30, 4.9),
  (6, 8, 38, 4.7),
  (7, 5, 25, 4.6),
  (8, 6, 30, 4.8),
  (9, 9, 45, 4.8),
  (10, 10, 50, 4.9);

-- Inserindo dados na tabela Campanha de Marketing
INSERT INTO campanha_marketing (nome, descricao, data_inicio, data_fim, status)
VALUES
  ('Promoção de Inverno', 'Desconto de 20% para manutenção em veículos até 10 anos', '2025-06-01', '2025-06-30', 'Ativa'),
  ('Promoção de Natal', 'Desconto de 15% para revisão de motor', '2025-12-01', '2025-12-31', 'Ativa'),
  ('Campanha de Verão', 'Desconto de 10% em trocas de óleo', '2025-03-01', '2025-03-31', 'Ativa'),
  ('Promoção de Black Friday', 'Desconto de 25% em serviços gerais', '2025-11-01', '2025-11-30', 'Ativa');

INSERT INTO log_auditoria (tabela_afetada, id_registro, acao, usuario, detalhes)
VALUES
  ('servico', 1, 'Inserção', 'Administrador', '{"descricao": "Troca de óleo e verificação da suspensão", "data": "2025-01-14"}'),
  ('peca', 1, 'Inserção', 'Carlos Oliveira', '{"nome": "Óleo 5W-30", "preco": 120.00, "codigo_barras": "1234567890123"}'),
  ('estoque', 1, 'Atualização', 'Administrador', '{"quantidade": 50, "local_armazenamento": "Prateleira 1"}'),
  ('pagamento', 1, 'Inserção', 'Carlos Oliveira', '{"valor_total": 500.00, "forma_pagamento": "Visa"}'),
  ('usuario', 1, 'Inserção', 'Administrador', '{"nome": "Administrador", "email": "admin@oficina.com"}'),
  ('relatorio_mecanico', 1, 'Atualização', 'Carlos Oliveira', '{"total_servicos": 10, "media_avaliacoes": 4.8}'),
  ('campanha_marketing', 1, 'Inserção', 'Administrador', '{"nome": "Promoção de Inverno", "descricao": "Desconto de 20%"}');


DESCRIBE servico_peca;
ALTER TABLE servico_peca ADD COLUMN quantidade_necessaria INT;
SELECT * FROM servico_peca;
-- Inserindo dados na tabela servico_peca
INSERT INTO servico_peca (id_servico, id_peca, quantidade_necessaria)
VALUES
  (1, 1, 3),  -- Serviço 1 (Troca de óleo e verificação da suspensão) usa 3 unidades de Óleo 5W-30
  (2, 2, 1),  -- Serviço 2 (Troca de bateria do Tesla) usa 1 unidade de Bateria Tesla
  (3, 8, 2),  -- Serviço 3 (Reparo no sistema de ar condicionado) usa 2 unidades de Sistema de Injeção Eletrônica
  (4, 3, 2),  -- Serviço 4 (Revisão de motor e suspensão) usa 2 unidades de Amortecedor Kyb
  (5, 1, 2),  -- Serviço 5 (Troca de óleo e filtros) usa 2 unidades de Óleo 5W-30
  (6, 6, 1),  -- Serviço 6 (Manutenção de sistema de freios) usa 1 unidade de Pastilha de Freio
  (7, 5, 1),  -- Serviço 7 (Troca de correia dentada) usa 1 unidade de Correia Dentada
  (8, 7, 4),  -- Serviço 8 (Instalação de novos amortecedores) usa 4 unidades de Amortecedor Kyb
  (9, 9, 1),  -- Serviço 9 (Reparo no sistema de injeção eletrônica) usa 1 unidade de Sistema de Injeção Eletrônica
  (10, 4, 1); -- Serviço 10 (Revisão de sistema elétrico) usa 1 unidade de Filtro de Óleo
  
  