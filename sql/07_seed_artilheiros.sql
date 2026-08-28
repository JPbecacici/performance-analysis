-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 07: Tabela de artilheiros (versão simplificada)
-- ============================================================
-- Fonte: matéria oficial "Números e marcas do elenco campeão do
-- Brasileirão 2022" (palmeiras.com.br, 17/11/2022), que traz o
-- total de gols de cada jogador ESPECIFICAMENTE no Brasileirão
-- 2022 (não soma Libertadores, Paulista, Copa do Brasil etc).
--
-- Observação: a soma dos gols abaixo (63) fica 3 a menos que o
-- total de gols marcados pelo time na competição (66). A diferença
-- são gols contra sofridos pelos adversários em favor do Palmeiras,
-- que não são creditados a nenhum jogador do elenco.
-- ============================================================

CREATE TABLE stage.artilheiros (
    jogador_id        INT PRIMARY KEY REFERENCES stage.jogadores(id),
    gols_brasileirao  SMALLINT NOT NULL CHECK (gols_brasileirao > 0)
);

COMMENT ON TABLE stage.artilheiros IS 'Total de gols de cada jogador do Palmeiras no Brasileirão 2022 (sem vínculo com partida específica)';

INSERT INTO stage.artilheiros (jogador_id, gols_brasileirao)
SELECT id, gols FROM (VALUES
    ('Rony',              12),
    ('Gustavo Gómez',      9),
    ('Dudu',               7),
    ('Gustavo Scarpa',     7),
    ('Murilo',             5),
    ('Endrick',            3),
    ('Raphael Veiga',      3),
    ('Zé Rafael',          3),
    ('Mayke',              3),
    ('José Manuel López',  2),
    ('Miguel Merentiel',   2),
    ('Gabriel Menino',     2),
    ('Wesley',             1),
    ('Breno Lopes',        1),
    ('Danilo',             1),
    ('Vanderlan',          1),
    ('Atuesta',            1)
) AS t(nome, gols)
JOIN stage.jogadores j ON j.nome = t.nome;
