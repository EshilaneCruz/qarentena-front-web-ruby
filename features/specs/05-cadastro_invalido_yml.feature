     #language: pt
     @regressivo
     Funcionalidade: Criar conta
     Como um usuário do site QArentena Demo
     Quero criar conta Demo
     Para receber noticias sobre Qualidade de software

     @cadastro_invalido_yml
     Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
     Dado que acesso o cadastro de usuário
     E eu informe os campos <nome>,<sobrenome>,<email>,<celular>,<tipo_de_conta>,<documento> conforme arquivo
     Quando confirmo o cadastro
     Então deve exibir no topo do formulário a mensagem de erro <msg_falha>
     E deve exibir no campo a mensagem de erro <msg_falha_campo>
     E permanecer na página de cadastro
     Exemplos:
     | nome          | sobrenome          | email              | celular             | tipo_de_conta | documento       | msg_falha                | msg_falha_campo   |
     | "nome_vazio"  | "sobrenome_valido" | "email_valido"     | "celular_valido"    | "pf"          | "cpf_valido"    | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_vazio"  | "email_valido"     | "celular_valido"    | "pf"          | "cpf_valido"    | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_valido" | "email_vazio"      | "celular_valido"    | "pf"          | "cpf_valido"    | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_valido" | "email_sem_arroba" | "celular_valido"    | "pf"          | "cpf_valido"    | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_valido" | "email_valido"     | "celular_com_letra" | "pj"          | "cnpj_valido"   | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_valido" | "email_valido"     | "celular_valido"    | "tipo_vazio"  | "cnpj_valido"   | "mensagem_de_falha_topo" | "msg_falha_campo" |
     # | "nome_valido" | "sobrenome_valido" | "email_valido"     | "celular_valido"    | "pj"          | "cnpj_vazio"    | "mensagem_de_falha_topo" | "msg_falha_campo" |