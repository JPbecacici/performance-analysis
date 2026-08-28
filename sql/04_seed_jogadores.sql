-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 04: Seed - elenco que disputou a competição
-- ============================================================
-- Observação: alguns números de camisa (numero_camisa) ficaram
-- como NULL porque não encontrei confirmação 100% confiável.
-- Recomendo validar e completar consultando:
-- https://www.espn.com.br/futebol/time/elenco/_/id/2029/palmeiras/ano/2022
-- Isso não impacta o restante do projeto, é só um dado complementar.
-- ============================================================

INSERT INTO stage.jogadores (nome, posicao, numero_camisa, nacionalidade) VALUES
('Weverton',            'Goleiro',           1,    'Brasil'),
('Marcelo Lomba',       'Goleiro',           22,   'Brasil'),
('Marcos Rocha',        'Lateral-direito',   2,    'Brasil'),
('Mayke',               'Lateral-direito',   12,   'Brasil'),
('Gustavo Gómez',       'Zagueiro',          15,   'Paraguai'),
('Murilo',              'Zagueiro',          NULL, 'Brasil'),
('Luan',                'Zagueiro',          4,    'Brasil'),
('Kuscevic',            'Zagueiro',          NULL, 'Chile'),
('Jorge',               'Lateral-esquerdo',  6,    'Brasil'),
('Piquerez',            'Lateral-esquerdo',  NULL, 'Uruguai'),
('Vanderlan',           'Lateral-esquerdo',  36,   'Brasil'),
('Zé Rafael',           'Volante',           8,    'Brasil'),
('Danilo',              'Volante',           NULL, 'Brasil'),
('Atuesta',             'Volante',           NULL, 'Colômbia'),
('Jailson',             'Volante',           NULL, 'Brasil'),
('Gabriel Menino',      'Meio-campista',     NULL, 'Brasil'),
('Gustavo Scarpa',      'Meio-campista',     14,   'Brasil'),
('Raphael Veiga',       'Meio-campista',     23,   'Brasil'),
('Bruno Tabata',        'Meio-campista',     27,   'Brasil'),
('Dudu',                'Atacante',          7,    'Brasil'),
('Rony',                'Atacante',          10,   'Brasil'),
('Wesley',               'Atacante',         11,   'Brasil'),
('Breno Lopes',         'Atacante',          26,   'Brasil'),
('Rafael Navarro',      'Atacante',          NULL, 'Brasil'),
('Gabriel Veron',       'Atacante',          NULL, 'Brasil'),
('José Manuel López',   'Atacante',          NULL, 'Paraguai'),
('Miguel Merentiel',    'Atacante',          NULL, 'Uruguai');
