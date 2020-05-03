#language:pt
@login
Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastrar um novo filme através do formulário
        e um novo registro é inserido no catálogo Ninjaflix.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

        Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

    @attent_movie
    Esquema do Cenario: Campos obrigatórios
        O gestor de catalogo tenta cadastrar um novo filme, mas esquece de preencher um dos campos
        obrigatórios, em seguida, o sistem exite uma notificação para o usuário.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação <texto>

        Exemplos:
            | codigo     | texto                                          |
            | "no_title" | "Oops - Filme sem titulo. Pode isso Arnaldo?"  |
            | "no_status"| "Oops - O status deve ser informado!"          |
            | "no_year"  | "Oops - Faltou o ano de lançamento também!"    | 
            | "no_date"  | "Oops - Quase lá, só falta a data de estréia!" |

    Cenario: Duplicado
        O gestor de catalogo tenta cadastrar um filme, porem o titulo já foi 
        cadastrado e outro momento e o sistema notifica o usuário informando que o titulo
        já existe

        Dado que "Deadpool 2" já foi cadastrado
        Mas este filme já existe no catalogo
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação "Oops - Este titulo já existe no Ninjaflix."
