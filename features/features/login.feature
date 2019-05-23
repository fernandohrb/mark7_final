        #language:pt

                Funcionalidade: Login
                        Para que eu possa cadastrar e gerenciar minhas tarefas
                        Sendo um usuário
                        Posso acessar o sistema com meu email e senhas previamente cadastrados.

                Contexto: Página principal
                        Dados que eu acesso a página principal

                @logout
                Cenário: Usuário deve ser autorizado

                        Quando eu faço o login com "fernandohrb@gmail.com" e "$Change01"
                        Então devo ser autenticado com sucesso
                        E devo ver a seguite mensagem "Olá, Fernando Henrique Rocha Brito"

                Esquema do Cenário: Tentativa de Login

                        Quando eu faço o login com "<email>" e "<senha>"
                        Então devo ver a seguite mensagem "<alerta>"

                        Exemplos:

                        | email                 | senha   | alerta                      |
                        | fernandohrb@gmail.com | xpto123 | Senha inválida.             |
                        | eu@papito.net         | xpto123 | Usuário não cadastrado.     |
                        | eupapito.net          | xpto123 | Email incorreto ou ausente. |
                        |                       | asdadas | Email incorreto ou ausente. |
                        

