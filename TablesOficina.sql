CREATE DATABASE oficina;
USE oficina;

-- Criando a tabela Cliente
CREATE TABLE cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  tipo_cliente VARCHAR(20) CHECK (tipo_cliente IN ('PF', 'PJ')) NOT NULL,
  email VARCHAR(100) UNIQUE,
  telefone JSON,
  documento VARCHAR(20) UNIQUE,
  data_cadastro DATE NOT NULL,
  status_cliente VARCHAR(20) CHECK (status_cliente IN ('Ativo', 'Inativo')),
  nivel_fidelidade VARCHAR(50) DEFAULT 'Bronze',
  pontos_fidelidade INT DEFAULT 0
);

-- Criando a tabela Oficina
CREATE TABLE oficina (
  id_oficina INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  endereco VARCHAR(255) NOT NULL,
  telefone JSON,
  id_proprietario INT NOT NULL,
  horario_funcionamento VARCHAR(100),
  capacidade INT CHECK (capacidade > 0),
  FOREIGN KEY (id_proprietario) REFERENCES cliente(id_cliente) ON DELETE CASCADE
);

-- Criando a tabela Mecânico
CREATE TABLE mecanico (
  id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  especialidade VARCHAR(100),
  funcao VARCHAR(50),
  data_contratacao DATE NOT NULL,
  id_oficina INT NOT NULL,
  habilidades TEXT,
  escala_trabalho VARCHAR(50),
  experiencia TEXT,
  nota_media DECIMAL(3, 2) CHECK (nota_media BETWEEN 0 AND 5),
  FOREIGN KEY (id_oficina) REFERENCES oficina(id_oficina) ON DELETE CASCADE
);

-- Criando a tabela Veículo
CREATE TABLE veiculo (
  id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
  modelo VARCHAR(50) NOT NULL,
  marca VARCHAR(50) NOT NULL,
  ano INT CHECK (ano >= 1900),
  numero_chassi VARCHAR(50) UNIQUE,
  numero_motor VARCHAR(50),
  id_cliente INT NOT NULL,
  tipo_combustivel VARCHAR(20) CHECK (tipo_combustivel IN ('Gasolina', 'Álcool', 'Diesel', 'Elétrico', 'Flex')),
  status_veiculo VARCHAR(50) CHECK (status_veiculo IN ('Em manutenção', 'Pronto', 'Aguardando Peças')),
  foto_veiculo TEXT,
  observacoes TEXT,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- Criando a tabela Orcamento
CREATE TABLE orcamento (
  id_orcamento INT AUTO_INCREMENT PRIMARY KEY,
  descricao TEXT,
  valor_total DECIMAL(10, 2) NOT NULL CHECK (valor_total > 0),
  status_orcamento VARCHAR(20) CHECK (status_orcamento IN ('Aprovado', 'Em Aprovacao', 'Rejeitado')),
  data_criacao DATE NOT NULL
);

-- Criando a tabela Serviço
CREATE TABLE servico (
  id_servico INT AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(255) NOT NULL,
  data DATE NOT NULL,
  id_veiculo INT,
  id_mecanico INT,
  id_orcamento INT,
  prioridade VARCHAR(20) CHECK (prioridade IN ('Baixa', 'Média', 'Alta')),
  categoria_servico VARCHAR(100),
  tags TEXT,
  duracao_estimada TIME,
  avaliacao_cliente INT CHECK (avaliacao_cliente BETWEEN 1 AND 5),
  FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
  FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico),
  FOREIGN KEY (id_orcamento) REFERENCES orcamento(id_orcamento) ON DELETE CASCADE
);

-- Criando a tabela Peça
CREATE TABLE peca (
  id_peca INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(255),
  preco DECIMAL(10, 2) NOT NULL,
  codigo_barras VARCHAR(20) UNIQUE,
  validade DATE,  -- Removido o CHECK diretamente
  valor_compra DECIMAL(10, 2),
  estoque_minimo INT CHECK (estoque_minimo >= 0),
  fornecedor VARCHAR(100)
);

CREATE TABLE servico_peca (
  id_servico INT,
  id_peca INT,
  quantidade INT DEFAULT 1,  -- Quantidade de peças usadas no serviço
  PRIMARY KEY (id_servico, id_peca),
  FOREIGN KEY (id_servico) REFERENCES servico(id_servico),
  FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

-- Criando a tabela Estoque
CREATE TABLE estoque (
  id_peca INT,
  quantidade INT CHECK (quantidade >= 0),
  local_armazenamento VARCHAR(50),
  quantidade_reservada INT CHECK (quantidade_reservada >= 0),
  data_ultima_atualizacao DATE,
  PRIMARY KEY (id_peca),
  FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

-- Criando a tabela Log de Auditoria
CREATE TABLE log_auditoria (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  tabela_afetada VARCHAR(100),
  id_registro INT,
  acao VARCHAR(50) CHECK (acao IN ('Inserção', 'Atualização', 'Exclusão')),
  data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  usuario VARCHAR(50),
  detalhes JSON
);

-- Criando a tabela Pagamento
CREATE TABLE pagamento (
  id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
  id_servico INT,
  data_pagamento DATE NOT NULL,
  valor_total DECIMAL(10, 2),
  valor_pago DECIMAL(10, 2),
  saldo_devido DECIMAL(10, 2),
  forma_pagamento JSON,
  desconto DECIMAL(10, 2),
  status_pagamento VARCHAR(20) CHECK (status_pagamento IN ('Pendente', 'Pago', 'Cancelado')),
  FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- Criando a tabela Usuário
CREATE TABLE usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  senha_hash VARCHAR(255),
  perfil_acesso VARCHAR(50) CHECK (perfil_acesso IN ('Admin', 'Mecânico', 'Atendimento')),
  ativo BOOLEAN DEFAULT TRUE
);

-- Criando a tabela Relatório de Desempenho do Mecânico
CREATE TABLE relatorio_mecanico (
  id_mecanico INT,
  total_servicos INT,
  total_avaliacoes INT,
  media_avaliacoes DECIMAL(3, 2),
  FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico)
);

-- Criando a tabela Campanha de Marketing
CREATE TABLE campanha_marketing (
  id_campanha INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  descricao TEXT,
  data_inicio DATE,
  data_fim DATE,
  status VARCHAR(50) CHECK (status IN ('Ativa', 'Encerrada'))
);

-- Trigger para garantir que a validade seja maior ou igual à data atual
DELIMITER $$

CREATE TRIGGER verifica_validade_peca
BEFORE INSERT ON peca
FOR EACH ROW
BEGIN
  IF NEW.validade < CURDATE() THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'A data de validade não pode ser no passado.';
  END IF;
END $$

DELIMITER ;