     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software

     @cadastro_invalido_yml
     Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
     Dado que eu esteja no formulário de cadastro
     E eu preencha os campos <nome>,<sobrenome>,<email>,<celular>,<tipo_de_conta>,<documento>
     Quando clicar no botão Enviar
     Então deve exibir no topo do formulário a mensagem de erro <msg_falha>
     E deve exibir no campo a mensagem de erro <msg_falha_campo>
     E permanecer na página de cadastro
     Exemplos:
     | nome                          | sobrenome                         | email              | celular             | tipo_de_conta | documento       | msg_falha                                                            | msg_falha_campo     |
     | "nome_vazio"                  | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "fisica"      | "cpf_valido"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "nome_com_caractere_inválido" | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "fisica"      | "cpf_valido"    | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_vazio"                 | "email_valido"     | "celular_valido"    | "fisica"      | "cpf_valido"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "nome_valido"                 | "sobrenome_com_caracter_invalido" | "email_valido"     | "celular_valido"    | "fisica"      | "cpf_valido"    | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_valido"                | "email_vazio"      | "celular_valido"    | "juridica"    | "cnpj_valido"   | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "nome_valido"                 | "sobrenome_valido"                | "email_sem_arroba" | "celular_valido"    | "juridica"    | "cnpj_valido"   | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_valido"                | "email_valido"     | "celular_com_letra" | "juridica"    | "cnpj_valido"   | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "tipo_vazio"  | "cnpj_valido"   | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |
     | "nome_valido"                 | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "juridica"    | "cpf_invalido"  | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "juridica"    | "cnpj_invalido" | "There was a problem with your submission. Errors are marked below." | "Formato inválido"  |
     | "nome_valido"                 | "sobrenome_valido"                | "email_valido"     | "celular_valido"    | "juridica"    | "cnpj_vazio"    | "There was a problem with your submission. Errors are marked below." | "Campo obrigatório" |