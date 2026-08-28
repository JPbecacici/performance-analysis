-- ============================================================
-- Projeto: Palmeiras - Campeonato Brasileiro Série A 2022
-- Script 06: Adiciona jogador que faltava no elenco
-- ============================================================
-- Endrick (Sub-20) estreou e marcou gols na campanha do
-- Brasileirão 2022, mas não estava na seed original de jogadores.

INSERT INTO stage.jogadores (nome, posicao, numero_camisa, nacionalidade) VALUES
('Endrick', 'Atacante', 16, 'Brasil');
