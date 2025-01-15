# Projeto de Banco de Dados de Oficina Mecânica

## Descrição

Este projeto consiste na criação de um banco de dados para gerenciamento de uma oficina mecânica. O objetivo é organizar informações sobre clientes, serviços, peças, mecânicos e oficinas, além de permitir a manutenção dos dados de maneira eficiente. O sistema permite registrar serviços realizados, o uso de peças, a alocação de mecânicos para as tarefas, e o controle de estoque.


O banco de dados foi modelado utilizando um diagrama Entidade-Relacionamento (ER) e posteriormente foi adaptado para o modelo lógico


## Tecnologias Utilizadas

- **MySQL Workbench**: Ferramenta utilizada para modelagem do banco de dados e desenvolvimento de queries.
- **SQL**: Linguagem de consulta utilizada para criação, manipulação e gerenciamento do banco de dados.

## Funcionalidades

- **Gestão de Clientes**: Registro de informações detalhadas sobre clientes, tanto pessoa física (PF) quanto pessoa jurídica (PJ), com suporte para dados como nome, CPF/CNPJ, telefone, e-mail, etc.
  
- **Gestão de Mecânicos**: Controle dos mecânicos da oficina, incluindo seus dados pessoais, especializações e horários de trabalho.

- **Gestão de Serviços**: Cadastro e detalhamento dos serviços prestados pela oficina, como troca de óleo, reparos no sistema de suspensão, entre outros. Cada serviço pode estar relacionado a diferentes peças e requer a alocação de recursos adequados.

- **Gestão de Peças**: Registro de peças usadas nos serviços, incluindo informações sobre nome, quantidade disponível, preço e fornecedor.

- **Gestão de Oficinas**: Cadastro das oficinas com informações como nome, localização e horários de funcionamento, permitindo que múltiplas oficinas possam ser gerenciadas.

- **Relacionamento entre Serviços e Peças**: Cada serviço pode utilizar diversas peças. A tabela de relacionamento entre serviços e peças define a quantidade de cada peça necessária para a execução do serviço.

- **Controle de Estoque de Peças**: A cada serviço realizado, o banco de dados atualiza a quantidade de peças em estoque, permitindo o controle eficiente de materiais.

- **Gestão de Agendamentos**: Registro de agendamentos de serviços realizados pelos clientes, com possibilidade de verificação de disponibilidade de mecânicos e oficinas.

Essas funcionalidades proporcionam uma gestão eficaz da oficina, otimizando os processos de agendamento, execução e controle de estoque.

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
