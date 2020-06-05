#language: pt

Funcionalidade: Remover filme

    Para que eu possa manter o catalogo atualizado
    Sendo um gestor de catalogo que encontrou um título cancelado/indesejado ou que não teve uma boa aceitação pelo público
    Posso remover este item

    Cenário: Confirmar exclusão
        Dado que "Dbz" está no catálogo
        Quando eu solicito a exclusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo
        
    Cenário: Cancelar exclusão
        Dado que "10_coisas" está no catálogo
        Quando eu solicito a exclusão
        Mas cancelo a solicitação
        Então este item deve permanecer no catálogo 