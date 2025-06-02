<div align="center">

#  LOL - PROLOG

![League of Legends](https://img.shields.io/badge/League%20of%20Legends-%23000?style=for-the-badge&logo=leagueoflegends)

</div>

## :information_source: Fatos

| Fato | Descrição |
| :---: | :--- |
| `atributo(NomeItem, Atributo).` | Define o atributo de status melhorado pelo item |
| `categoria(NomeItem, Categoria).` | Classifica o item em categoria de raridade |
| `classe(NomeCampeao, Classe).` | Associa o campeão a sua classe |
| `range_item(NomeItem, TipoAlcance).` | Define o tipo de alcance do item |
| `ranged_type(NomeCampeao, TipoAlcance).` | Define o tipo de alcance do campeão |
| `receita(ItemConstruido, ItemComponente).` | Especifica o componente necessário para construir um item mais raro |
| `usa_atributo(Classe, Atributo).` | Mapeia a classe de campeão para sua característica de atributo de status |

## :information_source: Predicados

| Predicados | Descrição |
| :---: | :--- |
| `campeao(Nome, Classe, Ranged).` | Obtém informações de campeões relativos a sua classe e alcance. |
| `raridade(ItemContruido, TipoItemReceita, TipoItemContruido).` | Obtém os itens de uma raridade que constroi itens de outro tipo de raridade. |
| `recomendado(Item, Campeao).` | Obtém os itens recomendados para um campeão, considerando fatores como atributo e alcance. |
| `build(Item, Constroi).` | Encontra todos os itens que podem ser construídos a partir de um item base (recursivamente). |
| `pode_usar(Atributo, Campeao).` | Verifica quais campeões tem característica de um atributo de status específico |

## :hammer_and_wrench: Pré Requisitos

### SWI-Prolog

```bash
sudo apt install swi-prolog
```

## :open_file_folder: Clonar Repositório

```bash
git clone https://github.com/paulohebert/lol-prolog.git
```

## :rocket: Executar Projeto

```bash
prolog predicados.pl
```

## :mag_right: Exemplos de Consultas

```prolog
?- build('Espada Longa', X).  % Precione ";" para mostrar o próximo resultado
?- pode_usar(ap, X).          % Precione ";" para mostrar o próximo resultado
?- recomendado(X, 'Ekko').    % Precione ";" para mostrar o próximo resultado
?- item(X, basico, lendario). % Precione ";" para mostrar o próximo resultado
?- campeao(X, mago, melee).   % Precione ";" para mostrar o próximo resultado
```

## :technologist: Autores

| [<img loading="lazy" src="https://avatars.githubusercontent.com/u/116759885?v=4" width=115><br><sub>Pedro Vinícius</sub>](https://github.com/Xerubinas) | [<img loading="lazy" src="https://avatars.githubusercontent.com/u/133797775?v=4" width=115><br><sub>Paulo Hebert</sub>](https://github.com/paulohebert) |
| :---: | :---: |
