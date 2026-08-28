-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 05: Seed - as 38 rodadas com resultados confirmados
-- ============================================================
-- Fonte: tabela de resultados fornecida pelo usuário (histórico
-- de partidas do Palmeiras na temporada, Campeonato Brasileiro).
-- mandante = TRUE quando o Palmeiras jogou em casa.
-- gols_palmeiras / gols_adversario sempre na perspectiva do Palmeiras,
-- independente de mando de campo.
-- ============================================================

INSERT INTO stage.partidas (rodada, data_partida, adversario_id, mandante, gols_palmeiras, gols_adversario)
VALUES
(1,  '2022-04-09', (SELECT id FROM stage.adversarios WHERE nome = 'Ceará'),         TRUE,  2, 3),
(2,  '2022-04-16', (SELECT id FROM stage.adversarios WHERE nome = 'Goiás'),         FALSE, 1, 1),
(3,  '2022-04-20', (SELECT id FROM stage.adversarios WHERE nome = 'Flamengo'),      FALSE, 0, 0),
(4,  '2022-04-23', (SELECT id FROM stage.adversarios WHERE nome = 'Corinthians'),   TRUE,  3, 0),
(5,  '2022-05-08', (SELECT id FROM stage.adversarios WHERE nome = 'Fluminense'),    TRUE,  1, 1),
(6,  '2022-05-14', (SELECT id FROM stage.adversarios WHERE nome = 'Bragantino'),    TRUE,  2, 0),
(7,  '2022-05-21', (SELECT id FROM stage.adversarios WHERE nome = 'Juventude'),     FALSE, 3, 0),
(8,  '2022-05-29', (SELECT id FROM stage.adversarios WHERE nome = 'Santos'),        FALSE, 1, 0),
(9,  '2022-06-05', (SELECT id FROM stage.adversarios WHERE nome = 'Atlético-MG'),   TRUE,  0, 0),
(10, '2022-06-09', (SELECT id FROM stage.adversarios WHERE nome = 'Botafogo'),      TRUE,  4, 0),
(11, '2022-06-12', (SELECT id FROM stage.adversarios WHERE nome = 'Coritiba'),      FALSE, 2, 0),
(12, '2022-06-16', (SELECT id FROM stage.adversarios WHERE nome = 'Atlético-GO'),   TRUE,  4, 2),
(13, '2022-06-20', (SELECT id FROM stage.adversarios WHERE nome = 'São Paulo'),     FALSE, 2, 1),
(14, '2022-06-26', (SELECT id FROM stage.adversarios WHERE nome = 'Avaí'),          FALSE, 2, 2),
(15, '2022-07-02', (SELECT id FROM stage.adversarios WHERE nome = 'Athletico-PR'),  TRUE,  0, 2),
(16, '2022-07-10', (SELECT id FROM stage.adversarios WHERE nome = 'Fortaleza'),     FALSE, 0, 0),
(17, '2022-07-18', (SELECT id FROM stage.adversarios WHERE nome = 'Cuiabá'),        TRUE,  1, 0),
(18, '2022-07-21', (SELECT id FROM stage.adversarios WHERE nome = 'América-MG'),    FALSE, 1, 0),
(19, '2022-07-24', (SELECT id FROM stage.adversarios WHERE nome = 'Internacional'), TRUE,  2, 1),
(20, '2022-07-30', (SELECT id FROM stage.adversarios WHERE nome = 'Ceará'),         FALSE, 2, 1),
(21, '2022-08-07', (SELECT id FROM stage.adversarios WHERE nome = 'Goiás'),         TRUE,  3, 0),
(22, '2022-08-13', (SELECT id FROM stage.adversarios WHERE nome = 'Corinthians'),   FALSE, 1, 0),
(23, '2022-08-21', (SELECT id FROM stage.adversarios WHERE nome = 'Flamengo'),      TRUE,  1, 1),
(24, '2022-08-27', (SELECT id FROM stage.adversarios WHERE nome = 'Fluminense'),    FALSE, 1, 1),
(25, '2022-09-03', (SELECT id FROM stage.adversarios WHERE nome = 'Bragantino'),    FALSE, 2, 2),
(26, '2022-09-10', (SELECT id FROM stage.adversarios WHERE nome = 'Juventude'),     TRUE,  2, 1),
(27, '2022-09-18', (SELECT id FROM stage.adversarios WHERE nome = 'Santos'),        TRUE,  1, 0),
(28, '2022-09-28', (SELECT id FROM stage.adversarios WHERE nome = 'Atlético-MG'),   FALSE, 1, 0),
(29, '2022-10-03', (SELECT id FROM stage.adversarios WHERE nome = 'Botafogo'),      FALSE, 3, 1),
(30, '2022-10-06', (SELECT id FROM stage.adversarios WHERE nome = 'Coritiba'),      TRUE,  4, 0),
(31, '2022-10-10', (SELECT id FROM stage.adversarios WHERE nome = 'Atlético-GO'),   FALSE, 1, 1),
(32, '2022-10-16', (SELECT id FROM stage.adversarios WHERE nome = 'São Paulo'),     TRUE,  0, 0),
(33, '2022-10-22', (SELECT id FROM stage.adversarios WHERE nome = 'Avaí'),          TRUE,  3, 0),
(34, '2022-10-25', (SELECT id FROM stage.adversarios WHERE nome = 'Athletico-PR'),  FALSE, 3, 1),
(35, '2022-11-02', (SELECT id FROM stage.adversarios WHERE nome = 'Fortaleza'),     TRUE,  4, 0),
(36, '2022-11-06', (SELECT id FROM stage.adversarios WHERE nome = 'Cuiabá'),        FALSE, 1, 1),
(37, '2022-11-09', (SELECT id FROM stage.adversarios WHERE nome = 'América-MG'),    TRUE,  2, 1),
(38, '2022-11-13', (SELECT id FROM stage.adversarios WHERE nome = 'Internacional'), FALSE, 0, 3);
