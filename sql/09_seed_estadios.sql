-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 09: Preenche a coluna estadio das 38 rodadas
-- ============================================================
-- Fonte: palmeiras.com.br, "Confira cada passo do Palmeiras na
-- conquista do hendeca brasileiro" (16/11/2022).
-- ============================================================

UPDATE stage.partidas SET estadio = CASE rodada
    WHEN 1  THEN 'Allianz Parque'
    WHEN 2  THEN 'Hailé Pinheiro (Serrinha)'
    WHEN 3  THEN 'Arena Barueri'
    WHEN 4  THEN 'Maracanã'
    WHEN 5  THEN 'Allianz Parque'
    WHEN 6  THEN 'Allianz Parque'
    WHEN 7  THEN 'Alfredo Jaconi'
    WHEN 8  THEN 'Vila Belmiro'
    WHEN 9  THEN 'Allianz Parque'
    WHEN 10 THEN 'Allianz Parque'
    WHEN 11 THEN 'Couto Pereira'
    WHEN 12 THEN 'Allianz Parque'
    WHEN 13 THEN 'Morumbi'
    WHEN 14 THEN 'Ressacada'
    WHEN 15 THEN 'Allianz Parque'
    WHEN 16 THEN 'Castelão (Fortaleza)'
    WHEN 17 THEN 'Allianz Parque'
    WHEN 18 THEN 'Independência'
    WHEN 19 THEN 'Allianz Parque'
    WHEN 20 THEN 'Castelão (Fortaleza)'
    WHEN 21 THEN 'Allianz Parque'
    WHEN 22 THEN 'Neo Química Arena'
    WHEN 23 THEN 'Allianz Parque'
    WHEN 24 THEN 'Maracanã'
    WHEN 25 THEN 'Nabi Abi Chedid'
    WHEN 26 THEN 'Allianz Parque'
    WHEN 27 THEN 'Allianz Parque'
    WHEN 28 THEN 'Mineirão'
    WHEN 29 THEN 'Nilton Santos'
    WHEN 30 THEN 'Allianz Parque'
    WHEN 31 THEN 'Antônio Accioly'
    WHEN 32 THEN 'Allianz Parque'
    WHEN 33 THEN 'Allianz Parque'
    WHEN 34 THEN 'Arena da Baixada'
    WHEN 35 THEN 'Allianz Parque'
    WHEN 36 THEN 'Arena Pantanal'
    WHEN 37 THEN 'Allianz Parque'
    WHEN 38 THEN 'Beira-Rio'
END;
