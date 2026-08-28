# Palmeiras 2022 — Análise da Campanha do Brasileirão

Análise de dados da campanha do título do **Palmeiras no Campeonato Brasileiro Série A 2022**, do banco de dados ao dashboard: modelagem em **PostgreSQL** e visualização em **Power BI**.

## Sobre o projeto

O objetivo foi reconstruir a temporada do Palmeiras na Série A 2022 (38 rodadas, do início ao título) em um banco de dados relacional, e transformar esses dados em um dashboard interativo que responda perguntas como:

- Qual foi o aproveitamento da equipe, geral e por mando de campo?
- Como evoluiu a pontuação ao longo da temporada?
- Quem foram os artilheiros da competição?
- Como público e renda se comportaram jogo a jogo?
- Qual foi o retrospecto contra cada um dos 19 adversários?

## Stack

- **PostgreSQL** — banco de dados relacional e modelagem
- **Power BI** — transformação (Power Query), modelo de dados e visualização (DAX)
- **SQL** — scripts de criação de schema e carga de dados

## Modelo de dados

Banco `palmeiras2022`, schema `stage`, com as seguintes tabelas:

| Tabela | Descrição |
|---|---|
| `adversarios` | Os 19 outros clubes da Série A 2022 |
| `jogadores` | Elenco do Palmeiras que atuou na temporada |
| `partidas` | As 38 rodadas: data, adversário, mando de campo, placar, estádio, público e renda |
| `artilheiros` | Total de gols de cada jogador na competição (recorte simplificado, não vinculado à partida exata) |
| `gols` | Estrutura pronta para detalhamento gol a gol (autor, minuto) — não populada nesta fase |

> `jogador_partida` (escalação, cartões, minutos jogados) está planejada para uma fase futura do projeto.

## Como reproduzir

Os scripts estão em [`/sql`](./sql), numerados na ordem de execução:

```bash
psql -U postgres -c "CREATE DATABASE palmeiras2022;"
psql -U postgres -d palmeiras2022 -f sql/02_schema_and_tables.sql
psql -U postgres -d palmeiras2022 -f sql/03_seed_adversarios.sql
psql -U postgres -d palmeiras2022 -f sql/04_seed_jogadores.sql
psql -U postgres -d palmeiras2022 -f sql/05_seed_partidas.sql
psql -U postgres -d palmeiras2022 -f sql/06_add_endrick.sql
psql -U postgres -d palmeiras2022 -f sql/07_seed_artilheiros.sql
psql -U postgres -d palmeiras2022 -f sql/08_fix_rodadas_3_4.sql
psql -U postgres -d palmeiras2022 -f sql/09_seed_estadios.sql
psql -U postgres -d palmeiras2022 -f sql/10_seed_publico_renda.sql
```

Depois, no Power BI Desktop: **Obter Dados → PostgreSQL database**, conectar em `localhost` / banco `palmeiras2022`, e importar as tabelas `stage.adversarios`, `stage.jogadores`, `stage.partidas` e `stage.artilheiros`.

## Dashboard

O relatório inclui:

- Cards de resumo (jogos, vitórias, empates, derrotas, gols, aproveitamento)
- Evolução de pontos acumulados por rodada
- Distribuição de resultados (vitória/empate/derrota)
- Desempenho por mando de campo (casa x fora)
- Artilharia da competição
- Público e renda por rodada
- Retrospecto contra cada adversário
- Tabela completa das 38 rodadas
- Filtros por mês, mando de campo e adversário

## Fontes dos dados

- Resultados, público e renda: dados públicos de resultados da temporada
- Estádios: [palmeiras.com.br — "Confira cada passo do Palmeiras na conquista do hendeca brasileiro"](https://www.palmeiras.com.br/noticias/confira-cada-passo-do-palmeiras-na-conquista-do-hendeca-brasileiro/)
- Artilharia: [palmeiras.com.br — "Números e marcas do elenco campeão do Brasileirão 2022"](https://www.palmeiras.com.br/noticias/numeros-e-marcas-do-elenco-campeao-do-brasileirao-2022/)

## Autor

João Pedro Becacici
