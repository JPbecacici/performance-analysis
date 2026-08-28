-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 03: Seed - os 19 adversários da temporada
-- ============================================================
-- Os 20 participantes da Série A 2022 foram:
-- Atlético-MG, Athletico-PR, América-MG, Atlético-GO, Avaí,
-- Botafogo, Bragantino, Ceará, Corinthians, Coritiba, Cuiabá,
-- Flamengo, Fluminense, Fortaleza, Goiás, Internacional,
-- Juventude, Palmeiras, Santos, São Paulo.
-- Removendo o Palmeiras, sobram os 19 adversários abaixo.
-- ============================================================

INSERT INTO stage.adversarios (nome, sigla, estado) VALUES
('Atlético-MG',       'CAM', 'MG'),
('Athletico-PR',      'CAP', 'PR'),
('América-MG',        'AME', 'MG'),
('Atlético-GO',       'ACG', 'GO'),
('Avaí',              'AVA', 'SC'),
('Botafogo',          'BOT', 'RJ'),
('Bragantino',        'RBB', 'SP'),
('Ceará',             'CEA', 'CE'),
('Corinthians',       'COR', 'SP'),
('Coritiba',          'CFC', 'PR'),
('Cuiabá',            'CUI', 'MT'),
('Flamengo',          'FLA', 'RJ'),
('Fluminense',        'FLU', 'RJ'),
('Fortaleza',         'FOR', 'CE'),
('Goiás',             'GOI', 'GO'),
('Internacional',     'INT', 'RS'),
('Juventude',         'JUV', 'RS'),
('Santos',            'SAN', 'SP'),
('São Paulo',         'SAO', 'SP');
