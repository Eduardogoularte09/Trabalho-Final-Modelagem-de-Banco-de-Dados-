-- Criação do schema
CREATE SCHEMA digital_music;

-- Criação da tabela de organizador
CREATE TABLE digital_music.organizador (
    id_organizador INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

-- Criação da tabela de conta
CREATE TABLE digital_music.conta (
    id_conta INT PRIMARY KEY,
    login VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    id_organizador INT UNIQUE NOT NULL,
    FOREIGN KEY (id_organizador)
        REFERENCES digital_music.organizador(id_organizador)
);

-- Criação da tabela local
CREATE TABLE digital_music.local (
    id_local INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    capacidade INT NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL
);

-- Criação da tabela usuario
CREATE TABLE digital_music.usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL
);

-- Criação da tabela artista
CREATE TABLE digital_music.artista (
    id_artista INT PRIMARY KEY,
    nome_artistico VARCHAR(100) NOT NULL,
    genero_musical VARCHAR(50) NOT NULL
);

-- Criação da tabela evento
CREATE TABLE digital_music.evento (
    id_evento INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data DATE NOT NULL,
    horario TIME NOT NULL,
    descricao TEXT NOT NULL,
    id_organizador INT NOT NULL,
    id_local INT NOT NULL,
    FOREIGN KEY (id_organizador)
        REFERENCES digital_music.organizador(id_organizador),
    FOREIGN KEY (id_local)
        REFERENCES digital_music.local(id_local)
);

-- Criação da tabela ingresso
CREATE TABLE digital_music.ingresso (
    id_ingresso INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL CHECK (valor >= 0),
    estoque INT NOT NULL CHECK (estoque >= 0),
    id_evento INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_evento)
        REFERENCES digital_music.evento(id_evento),
    FOREIGN KEY (id_usuario)
        REFERENCES digital_music.usuario(id_usuario)
);

-- Criação da tabela telefone_organizador
CREATE TABLE digital_music.telefone_organizador (
    id_telefone INT PRIMARY KEY,
    telefone VARCHAR(30) NOT NULL,
    id_organizador INT NOT NULL,
    FOREIGN KEY (id_organizador)
        REFERENCES digital_music.organizador(id_organizador)
);

-- Criação da tabela artista_evento
CREATE TABLE digital_music.artista_evento (
    id_artista_evento INT PRIMARY KEY,
    id_artista INT NOT NULL,
    id_evento INT NOT NULL,
    horario_apresentacao TIME NOT NULL,
    cache NUMERIC(10,2) NOT NULL,
    UNIQUE (id_artista, id_evento),
    FOREIGN KEY (id_artista)
        REFERENCES digital_music.artista(id_artista),
    FOREIGN KEY (id_evento)
        REFERENCES digital_music.evento(id_evento)
);