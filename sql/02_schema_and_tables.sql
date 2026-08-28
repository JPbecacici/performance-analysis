-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 02: Schema "stage" e tabelas
-- ============================================================
-- Execute este script já conectado ao banco "palmeiras2022"
-- (criado no script 01).
--
-- Via psql:
--   psql -U postgres -d palmeiras2022 -f 02_schema_and_tables.sql
-- ============================================================

CREATE SCHEMA IF NOT EXISTS stage;

-- ------------------------------------------------------------
-- 1) stage.adversarios
-- Os 19 outros clubes da Série A 2022 (Palmeiras não entra aqui)
-- ------------------------------------------------------------
CREATE TABLE stage.adversarios (
    id              SERIAL PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL UNIQUE,
    sigla           VARCHAR(10),
    estado          CHAR(2),
    escudo_url      TEXT
);

COMMENT ON TABLE stage.adversarios IS 'Clubes adversários do Palmeiras na Série A 2022';

-- ------------------------------------------------------------
-- 2) stage.jogadores
-- Elenco do Palmeiras que atuou na temporada
-- ------------------------------------------------------------
CREATE TABLE stage.jogadores (
    id              SERIAL PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL,
    posicao         VARCHAR(30),
    numero_camisa   SMALLINT,
    nacionalidade   VARCHAR(50) DEFAULT 'Brasil',
    data_nascimento DATE
);

COMMENT ON TABLE stage.jogadores IS 'Elenco do Palmeiras na temporada 2022';

-- ------------------------------------------------------------
-- 3) stage.partidas
-- As 38 rodadas do returno único do Brasileirão (turno + returno)
-- ------------------------------------------------------------
CREATE TABLE stage.partidas (
    id              SERIAL PRIMARY KEY,
    rodada          SMALLINT NOT NULL CHECK (rodada BETWEEN 1 AND 38),
    data_partida    DATE,
    adversario_id   INT NOT NULL REFERENCES stage.adversarios(id),
    mandante        BOOLEAN NOT NULL,   -- TRUE = Palmeiras jogou em casa
    gols_palmeiras  SMALLINT,
    gols_adversario SMALLINT,
    estadio         VARCHAR(100),
    publico         INT,
    renda           NUMERIC(12,2),
    UNIQUE (rodada)
);

COMMENT ON TABLE stage.partidas IS 'Partidas do Palmeiras na Série A 2022, uma linha por rodada';
COMMENT ON COLUMN stage.partidas.mandante IS 'TRUE se o Palmeiras jogou em casa, FALSE se foi visitante';

-- ------------------------------------------------------------
-- 4) stage.gols
-- Detalhamento de cada gol da partida (Palmeiras ou adversário)
-- ------------------------------------------------------------
CREATE TABLE stage.gols (
    id              SERIAL PRIMARY KEY,
    partida_id      INT NOT NULL REFERENCES stage.partidas(id),
    jogador_id      INT REFERENCES stage.jogadores(id),  -- NULL quando o gol é do adversário
    time            VARCHAR(20) NOT NULL CHECK (time IN ('Palmeiras', 'Adversario')),
    minuto          SMALLINT,
    tipo_gol        VARCHAR(20) DEFAULT 'Normal'
                    CHECK (tipo_gol IN ('Normal', 'Penalti', 'Contra', 'Falta'))
);

COMMENT ON TABLE stage.gols IS 'Gols marcados em cada partida, com autor (quando é do Palmeiras) e minuto';

-- ------------------------------------------------------------
-- 5) stage.jogador_partida
-- Participação de cada jogador em cada partida (escalação)
-- ------------------------------------------------------------
CREATE TABLE stage.jogador_partida (
    partida_id      INT NOT NULL REFERENCES stage.partidas(id),
    jogador_id      INT NOT NULL REFERENCES stage.jogadores(id),
    titular         BOOLEAN DEFAULT FALSE,
    minutos_jogados SMALLINT,
    cartao_amarelo  BOOLEAN DEFAULT FALSE,
    cartao_vermelho BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (partida_id, jogador_id)
);

COMMENT ON TABLE stage.jogador_partida IS 'Escalação e desempenho individual de cada jogador por partida';
