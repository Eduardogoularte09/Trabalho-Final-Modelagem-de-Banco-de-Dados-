# Trabalho-Final Modelagem de Banco de Dados
Trabalho desenvolvido na disciplina de Modelagem de Banco de Dados do curso DSM(1° Semestre) da Fatec Franca.

# Cenário


  Uma empresa chamada Digital Music é responsável pela organização e divulgação de eventos musicais em diversas cidades. O sistema desenvolvido tem como objetivo gerenciar informações sobre eventos, artistas, organizadores, locais, usuários e ingressos.
  
  Cada evento possui um código identificador, nome, data, horário e descrição. Os eventos são organizados por um organizador responsável, que possui dados cadastrais como nome, telefone, email para contato e um identificador. Além disso, cada organizador possui uma conta com identificador, login e senha de acesso exclusivo ao sistema, e cada conta pertence a um único organizador. Um organizador pode ser responsável por vários eventos, porém cada evento possui apenas um organizador.
  
  Os eventos acontecem em locais específicos, que possuem informações como nome, identificador, capacidade e endereço composto por rua, número, bairro, cidade e estado. Um local pode receber diversos eventos ao longo do tempo.
  
  Os artistas cadastrados no sistema participam dos eventos musicais. Cada artista possui um código identificador, nome artístico e gênero musical. Um artista pode se apresentar em vários eventos e um evento pode contar com vários artistas. Para cada participação de um artista em um evento, o sistema registra o horário da apresentação e o cachê acordado.
  
  Os usuários podem se cadastrar na plataforma para comprar ingressos. Cada usuário possui informações como nome, data de nascimento, email e um identificador. A idade do usuário pode ser calculada a partir da sua data de nascimento. Um usuário pode adquirir vários ingressos para diferentes eventos.
  
  Os ingressos são vinculados a um único evento e possuem informações como tipo, valor, estoque e um identificador. Cada ingresso comprado fica associado ao usuário que realizou a compra.
  
  O sistema permite registrar múltiplos telefones para organizadores, facilitando a comunicação com os responsáveis pelos eventos e apresentações.

# Modelo Conceitual

![Modelo Conceitual](PRINTS/Modelos/modeloconceitual.png)

# Modelo Lógico

![Modelo Lógico](PRINTS/Modelos/modelologico.png)

# Modelagem Física

## Criação do Schema

![Schema](PRINTS/CriaçãoDasTabelas/criandoschema.png)

  O schema `digital_music` foi criado para organizar todas as estruturas do banco de dados. Em seguida, foram implementadas as tabelas necessárias para representar as entidades e relacionamentos definidos na modelagem lógica.

## Tabela Organizador

![Tabelas](PRINTS/CriaçãoDasTabelas/organizador.png)

## Tabela Conta

![Tabelas](PRINTS/CriaçãoDasTabelas/conta.png)

## Tabela Local

![Tabelas](PRINTS/CriaçãoDasTabelas/local.png)

## Tabela Usuário

![Tabelas](PRINTS/CriaçãoDasTabelas/usuario.png)

## Tabela Artista

![Tabelas](PRINTS/CriaçãoDasTabelas/artista.png)

## Tabela Evento

![Tabelas](PRINTS/CriaçãoDasTabelas/evento.png)

## Tabela Ingresso

![Tabelas](PRINTS/CriaçãoDasTabelas/ingresso.png)

## Tabela Telefone_Organizador

![Tabelas](PRINTS/CriaçãoDasTabelas/telefone_organizador.png)

## Tabela Artista_Evento

![Tabelas](PRINTS/CriaçãoDasTabelas/artista_evento.png)

##  Inserção de Dados

![Tabelas](PRINTS/Tabelas/tabelaorganizador.png)

![Tabelas](PRINTS/Tabelas/tabelaconta.png)

![Tabelas](PRINTS/Tabelas/tabelalocal.png)

![Tabelas](PRINTS/Tabelas/tabelausuario.png)

![Tabelas](PRINTS/Tabelas/tabelaartista.png)

![Tabelas](PRINTS/Tabelas/tabelaevento.png)

![Tabelas](PRINTS/Tabelas/tabelaingresso.png)

![Tabelas](PRINTS/Tabelas/tabelatelefone_organizador.png)

![Tabelas](PRINTS/Tabelas/tabelaartista_evento.png)

# CRUD

CRUD é um conjunto de operações básicas utilizadas para manipular dados em um banco de dados:
- Create (Inserir)
- Read (Consultar)
- Update (Atualizar)
- Delete (Excluir)

## Create

  Inserção de um novo organizador.

![Create](PRINTS/CRUD/Create.png)

## Read

Consulta de registros cadastrados.

![Read](PRINTS/CRUD/Read.png)

## Update

Atualização de dados existentes.

![Update](PRINTS/CRUD/Update.png)

## Delete

Remoção do registro da tabela.

![Delete](PRINTS/CRUD/Delete.png)

# Relatórios

Foram desenvolvidas 10 consultas SQL utilizando SELECT, WHERE, ORDER BY e relacionamentos entre tabelas.

## Consulta 1 - Eventos localizados no estado de SP
  Retorna os eventos e seus respectivos locais filtrando apenas os que estão no estado de São Paulo.

![Consulta 1](PRINTS/ConsultasSQL/Consulta1.png)

## Consulta 2 - Eventos e organizadores com ID até 25
  Lista os eventos junto ao nome do organizador, considerando apenas organizadores com ID menor ou igual a 25.

![Consulta 2](PRINTS/ConsultasSQL/Consulta2.png)

## Consulta 3 - Eventos com ingressos acima de R$ 150
  Exibe eventos, tipos de ingresso e valores filtrando ingressos com preço superior a R$ 150.

![Consulta 3](PRINTS/ConsultasSQL/Consulta3.png)

## Consulta 4 - Artistas com cachê acima de R$ 8.000
  Apresenta artistas e seus cachês em eventos, filtrando valores acima de R$ 8.000.

![Consulta 4](PRINTS/ConsultasSQL/Consulta4.png)

## Consulta 5 - Usuários com ingressos VIP
  Lista usuários que adquiriram ingressos do tipo VIP, junto com o tipo e valor do ingresso.

![Consulta 5](PRINTS/ConsultasSQL/Consulta5.png)

## Consulta 6 - Eventos com alta disponibilidade de ingressos
  Exibe eventos com ingressos cujo estoque é superior a 400 unidades.

![Consulta 6](PRINTS/ConsultasSQL/Consulta6.png)

## Consulta 7 - Organizadores com telefone cadastrado
  Lista organizadores que possuem telefone cadastrado no sistema.

![Consulta 7](PRINTS/ConsultasSQL/Consulta7.png)

## Consulta 8 - Artistas em eventos com cachê acima de R$ 5.000
  Mostra eventos e artistas participantes, filtrando apenas cachês acima de R$ 5.000.

![Consulta 8](PRINTS/ConsultasSQL/Consulta8.png)

## Consulta 9 - Média de preço dos ingressos por evento
  Calcula a média de preço dos ingressos por evento, considerando valores maiores ou iguais a R$ 80.

![Consulta 9](PRINTS/ConsultasSQL/Consulta9.png)

## Consulta 10 - Receita potencial por evento
  Calcula a receita potencial de cada evento multiplicando o valor dos ingressos pelo estoque disponível.

![Consulta 10](PRINTS/ConsultasSQL/Consulta10.png)