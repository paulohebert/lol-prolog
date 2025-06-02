:- ['atributo_Item.pl' ,'categoria.pl', 'classe.pl', 'range_item.pl', 'range_type.pl', 'receita.pl', 'usa_atributo.pl'].

campeao(Nome, Classe, Ranged) :- classe(Nome, Classe), ranged_type(Nome, Ranged).

raridade(ItemContruido, TipoItemReceita, TipoItemContruido) :-
    categoria(ItemReceita, TipoItemReceita),
    categoria(ItemContruido, TipoItemContruido),
    receita(ItemContruido, ItemReceita).

recomendado(Item, Campeao) :-
    distinct(Atributo, (
        classe(Campeao, Classe),
        usa_atributo(Classe, Atributo)
    )),
    atributo(Item, Atributo),
    ranged_type(Campeao, Ranged),
    range_item(Item, Ranged).

build(Item, Constroi) :- receita(Constroi, Item).
build(Item, Constroi) :- distinct(Constroi, (receita(Constroi, X), build(Item, X))).

pode_usar(Atributo, Campeao) :- 
    distinct(Campeao, (
        classe(Campeao, Classe),
        usa_atributo(Classe, Atributo)
    )).