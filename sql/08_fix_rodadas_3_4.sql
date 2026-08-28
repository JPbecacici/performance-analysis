-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 08: Correção - rodadas 3 e 4 estavam trocadas
-- ============================================================
-- A rodada 3 oficial da CBF foi Palmeiras 3x0 Corinthians (23/04),
-- e a rodada 4 foi Flamengo 0x0 Palmeiras (20/04) - uma das duas
-- partidas foi remarcada, por isso a ordem cronológica não bate
-- com a numeração oficial das rodadas.
-- Fonte: palmeiras.com.br, "Confira cada passo do Palmeiras na
-- conquista do hendeca brasileiro".
-- ============================================================

UPDATE stage.partidas
SET data_partida = '2022-04-23',
    adversario_id = (SELECT id FROM stage.adversarios WHERE nome = 'Corinthians'),
    mandante = TRUE,
    gols_palmeiras = 3,
    gols_adversario = 0
WHERE rodada = 3;

UPDATE stage.partidas
SET data_partida = '2022-04-20',
    adversario_id = (SELECT id FROM stage.adversarios WHERE nome = 'Flamengo'),
    mandante = FALSE,
    gols_palmeiras = 0,
    gols_adversario = 0
WHERE rodada = 4;
