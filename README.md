# Projeto de Banco de Dados de Oficina Mecânica

## Descrição

Este projeto consiste na criação de um banco de dados para gerenciamento de uma oficina mecânica. O objetivo é organizar informações sobre clientes, serviços, peças, mecânicos e oficinas, além de permitir a manutenção dos dados de maneira eficiente. O sistema permite registrar serviços realizados, o uso de peças, a alocação de mecânicos para as tarefas, e o controle de estoque.

## Estrutura do Banco de Dados

O banco de dados foi modelado utilizando um diagrama Entidade-Relacionamento (ER), e contém as seguintes principais entidades:

- **Cliente**: Informações sobre os clientes, tanto pessoas físicas quanto jurídicas.
- **Serviço**: Detalhes dos serviços prestados pela oficina.
- **Peça**: Cadastro das peças utilizadas nos serviços.
- **Mecânico**: Dados dos mecânicos que realizam os serviços.
- **Oficina**: Informações sobre a oficina onde os serviços são realizados.
- **Serviço_Peca**: Relacionamento entre serviços e peças, incluindo a quantidade necessária para cada serviço.

## Tecnologias Utilizadas

- **MySQL Workbench**: Ferramenta utilizada para modelagem do banco de dados e desenvolvimento de queries.
- **SQL**: Linguagem de consulta utilizada para criação, manipulação e gerenciamento do banco de dados.

## Funcionalidades

- **Cadastro de Clientes**: Permite o cadastro de clientes, tanto pessoas físicas quanto jurídicas.
- **Cadastro de Serviços**: Inclui informações sobre os serviços oferecidos pela oficina.
- **Gestão de Peças**: Acompanhe as peças disponíveis no estoque e a quantidade necessária para cada serviço.
- **Atribuição de Mecânicos**: Os mecânicos podem ser alocados aos serviços com base na disponibilidade e especialização.
- **Relatórios de Serviços e Peças**: Geração de relatórios que mostram quais peças foram usadas em quais serviços.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

1. **clientes**: Dados dos clientes.
2. **servicos**: Informações sobre os serviços oferecidos pela oficina.
3. **pecas**: Detalhes das peças utilizadas nos serviços.
4. **mecanicos**: Informações sobre os mecânicos.
5. **oficinas**: Dados sobre a oficina.
6. **servico_peca**: Tabela de relacionamento entre serviços e peças.

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
Se você quiser contribuir para este projeto, fique à vontade para enviar um pull request. Verifique a documentação e as issues abertas para mais informações sobre como contribuir.

## Licença
Este projeto está licenciado sob a MIT License - veja o arquivo “LICENSE” para mais detalhes.
