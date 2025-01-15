# Projeto de Banco de Dados de Oficina Mecânica

## Descrição

Este projeto consiste na criação de um banco de dados para gerenciamento de uma oficina mecânica. O objetivo é organizar informações sobre clientes, serviços, peças, mecânicos e oficinas, além de permitir a manutenção dos dados de maneira eficiente. O sistema permite registrar serviços realizados, o uso de peças, a alocação de mecânicos para as tarefas, e o controle de estoque.


O banco de dados foi modelado utilizando um diagrama Entidade-Relacionamento (ER) e posteriormente foi adaptado para o modelo lógico


## Tecnologias Utilizadas

- **MySQL Workbench**: Ferramenta utilizada para modelagem do banco de dados e desenvolvimento de queries.
- **SQL**: Linguagem de consulta utilizada para criação, manipulação e gerenciamento do banco de dados.

## Funcionalidades

## Funcionalidades

- **Gestão de Clientes (Pessoa Física e Jurídica)**: 
  - A tabela `cliente` armazena informações detalhadas sobre os clientes, como nome, tipo de cliente (PF ou PJ), e dados de contato (telefone e e-mail).
  - O sistema permite que o status do cliente seja "Ativo" ou "Inativo", além de atribuir um nível de fidelidade (como "Bronze", "Prata", "Ouro"), com pontuação de fidelidade associada.

- **Gestão de Oficinas**: 
  - A tabela `oficina` registra as oficinas, incluindo o nome, descrição, endereço, horário de funcionamento, e a capacidade de atendimento.
  - Cada oficina pode ter um proprietário (referenciado pela tabela `cliente`), que é responsável pela administração do local.

- **Gestão de Mecânicos**:
  - A tabela `mecanico` contém dados dos mecânicos, como especialização, função, habilidades, e avaliação média de desempenho (de 0 a 5).
  - O mecânico está vinculado a uma oficina específica, e seu histórico de serviços prestados é gerido pelo sistema.

- **Gestão de Veículos**: 
  - A tabela `veiculo` permite o cadastro de veículos dos clientes, associando cada veículo a um cliente específico. Inclui dados como modelo, marca, tipo de combustível e status do veículo (em manutenção, pronto, aguardando peças).

- **Gestão de Orçamentos**: 
  - A tabela `orcamento` armazena os orçamentos para serviços, incluindo a descrição, valor total e o status do orçamento (aprovado, em aprovação, ou rejeitado).

- **Gestão de Serviços**: 
  - A tabela `servico` gerencia os serviços prestados aos veículos, como manutenções e reparos. Cada serviço está relacionado a um orçamento, mecânico, e veículo.
  - A prioridade do serviço pode ser definida, e a avaliação do cliente é registrada para controle de qualidade.

- **Gestão de Peças**:
  - A tabela `peca` armazena as peças utilizadas nos serviços, com informações sobre nome, descrição, preço e validade.
  - Cada peça é associada a um controle de estoque na tabela `estoque`, que registra a quantidade disponível e reservada.

- **Gestão de Estoque**:
  - A tabela `estoque` realiza o controle de peças disponíveis, com informações sobre local de armazenamento e a quantidade de peças reservadas para serviços em andamento.

- **Gestão de Pagamentos**:
  - A tabela `pagamento` gerencia os pagamentos dos serviços realizados, permitindo o controle de valores totais, pagos, e saldo devido. As formas de pagamento e descontos também são registrados.

- **Gestão de Auditoria**:
  - A tabela `log_auditoria` mantém o histórico de alterações nas tabelas do banco, registrando as ações de inserção, atualização ou exclusão, junto com o usuário responsável pela ação.

- **Relatórios de Desempenho**:
  - A tabela `relatorio_mecanico` fornece métricas sobre o desempenho dos mecânicos, incluindo o número total de serviços realizados, avaliações de clientes e a média das avaliações.

- **Campanhas de Marketing**:
  - A tabela `campanha_marketing` armazena informações sobre campanhas promocionais, permitindo gerenciar o status e as datas de início e fim de cada campanha.

- **Triggers e Validações**:
  - A trigger `verifica_validade_peca` garante que a validade das peças inseridas não seja anterior à data atual, evitando dados inconsistentes no banco.

Essas funcionalidades permitem uma gestão completa e eficiente de uma oficina mecânica, abrangendo desde o cadastro de clientes e veículos até o controle de estoque, serviços, pagamentos e campanhas de marketing.
## Como Executar o Projeto

1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/nome-do-repositorio.git
2. Acesse o banco de dados no MySQL Workbench e importe o arquivo SQL para criar as tabelas e popular com dados exemplo.

3. Para consultar ou modificar os dados, você pode usar o MySQL Workbench ou ferramentas similares.

## Scripts SQL

Este repositório inclui scripts SQL para:

Criação das tabelas: Scripts que criam todas as tabelas e seus relacionamentos.
Inserção de dados: Scripts com dados exemplo para facilitar os testes e demonstrações do banco de dados.
Consultas: Exemplos de consultas SQL para extrair relatórios de serviços e peças.
Contribuições
Se você quiser contribuir para este projeto, fique à vontade para enviar um pull request. 
