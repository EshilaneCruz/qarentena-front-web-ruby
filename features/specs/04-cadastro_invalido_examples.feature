     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software


     @cadastro_invalido_exemplos
     Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
     Dado que acesso o cadastro de usuário
     E eu preencha os campos com <nome>,<sobrenome>,<email>,<celular>,<tipo_de_conta>,<documento>
     Quando confirmo o cadastro
     Então deve exibir no topo do formulário a mensagem de erro <msg_falha>
     E deve exibir no campo a mensagem de erro <msg_falha_campo>
     E permanecer na página de cadastro
     Exemplos:
     | nome      | sobrenome   | email                 | celular       | tipo_de_conta | documento        | msg_falha                                                            | msg_falha_campo     |
     | ""        | "Araujo"    | "fabio@teste.com.br"  | "11976243216" | "pf"          | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Joana"   | ""          | "joana@teste.com.br"  | "11976227778" | "pf"          | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Edna"    | "Silva"     | ""                    | "11976222888" | "pj"          | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Renato"  | "Ferreira"  | "renatoteste.com.br"  | "11976222888" | "pj"          | "11222333000144" | ""                                                                   | ""                  |
     | "Renata"  | "Costa"     | "renato@teste.com.br" | "abcdefghijk" | "pj"          | "11222333000144" | ""                                                                   | ""                  |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | ""            | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | "pj"          | ""               | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     