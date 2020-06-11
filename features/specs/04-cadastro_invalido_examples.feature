     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software


     @cadastro_invalido_exemplos
     Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
     Dado que eu esteja no formulário de cadastro
     E eu preencha os campos com <nome>,<sobrenome>,<email>,<celular>,<tipo_de_conta>,<documento>
     Quando clicar no botão Enviar
     Então deve exibir no topo do formulário a mensagem de erro <msg_falha>
     E deve exibir no campo a mensagem de erro <msg_falha_campo>
     E permanecer na página de cadastro
     Exemplos:
     | nome      | sobrenome   | email                 | celular       | tipo_de_conta | documento        | msg_falha                                                            | msg_falha_campo     |
     | ""        | "Araujo"    | "fabio@teste.com.br"  | "11976243216" | "fisica"      | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Felipe@" | "Araujo"    | "felipe@teste.com.br" | "11976222666" | "fisica"      | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "Joana"   | ""          | "joana@teste.com.br"  | "11976227778" | "fisica"      | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Tereza"  | "Cristina@" | "tereza@teste.com.br" | "11976222888" | "fisica"      | "12345678900"    | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "Edna"    | "Silva"     | ""                    | "11976222888" | "juridica"    | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "Renato"  | "Ferreira"  | "renatoteste.com.br"  | "11976222888" | "juridica"    | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "Renata"  | "Costa"     | "renato@teste.com.br" | "abcdefghijk" | "juridica"    | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | ""            | "11222333000144" | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | "juridica"    | "abcdefghijk"    | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | "juridica"    | "abcdefgh0001ij" | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "joão"    | "Arantes"   | "joao@teste.com.br"   | "11976222228" | "juridica"    | ""               | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |

     