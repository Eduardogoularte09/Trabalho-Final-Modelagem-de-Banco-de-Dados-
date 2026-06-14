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

![Schema](PRINTS/CriaçãoDasTabelas/criandoschema.pngs.png)

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