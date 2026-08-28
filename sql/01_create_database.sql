-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 01: Criação do banco de dados
-- ============================================================
-- Execute este comando conectado ao banco "postgres" (padrão),
-- pois no PostgreSQL não é possível criar um banco de dados
-- estando conectado a ele mesmo.
--
-- Via psql:
--   psql -U postgres -c "CREATE DATABASE palmeiras2022;"
--
-- Ou rode o comando abaixo diretamente no psql / pgAdmin:

CREATE DATABASE palmeiras2022
    WITH
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TEMPLATE = template0;

-- Observação: se o LC_COLLATE/LC_CTYPE acima der erro (depende do que
-- foi instalado junto com o PostgreSQL no Windows), rode apenas:
--
-- CREATE DATABASE palmeiras2022;
--
-- e siga em frente sem problema — isso só afeta ordenação de texto,
-- não afeta a estrutura do projeto.
